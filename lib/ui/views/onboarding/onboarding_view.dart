import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:superappsnusa/application/app/app.locator.dart';
import 'package:superappsnusa/application/app/contants/custom_color.dart';
import 'package:superappsnusa/application/models/OnBoardingModel.dart';
import 'package:superappsnusa/ui/views/onboarding/onboarding_utils.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingView extends StatefulWidget {
  OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final _navigationService = locator<NavigationService>();
  late PageController _pageController;
  late int idx;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: 0);
    idx = 0;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final items = OnBoardingUtils.getItemSplashScreen();
    return WillPopScope(
        child: AnnotatedRegion<SystemUiOverlayStyle>(
          value: _buildHeader(idx, items),
          child: Scaffold(
            body: SafeArea(
                child: Container(
              padding: EdgeInsets.only(bottom: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 450.h,
                    child: PageView.builder(
                        controller: _pageController,
                        key: const Key('pageController'),
                        itemCount: items.length,
                        onPageChanged: (value) {
                          print('value ${value}');
                          setState(() {
                            idx = value;
                          });
                        },
                        itemBuilder: (_, index) {
                          return _buildPageView(items[index]);
                        }),
                  ),
                  _buildNext(idx, items),
                  const Spacer(),
                  _buildIndicator(items.length, idx, items),
                ],
              ),
            )),
          ),
        ),
        onWillPop: () async {
          SystemChannels.platform.invokeMethod('SystemNavigator.pop');

          return true;
        });
  }

  ListView _buildPageView(OnBoardingModel item) {
    return ListView(
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Container(
          key: const Key('onboardingImage'),
          height: 400.h,
          decoration: BoxDecoration(
            color: item.primaryColor,
          ),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Column(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 200.h,
                  width: 200.h,
                  decoration: BoxDecoration(
                      color: item.secondaryColor,
                      borderRadius: BorderRadius.all(
                          Radius.circular(item.type == 'rounded' ? 150 : 20))),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(16.w, 19.h, 16.w, 0),
                  child: Text(
                    item.title ?? '',
                    style: Theme.of(context).textTheme.headline1?.copyWith(
                        color: Colors.white,
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 0),
                  child: Text(
                    item.description ?? '',
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          color: Colors.white,
                          height: 1.4.h,
                        ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _buildNext(int idx, List<OnBoardingModel> item) {
    return InkWell(
      onTap: () {
        idx == item.length - 1 ? print('goto login') : _nextPage();
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            idx == item.length - 1 ? 'Masuk' : 'Lanjut',
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                color: item[idx].primaryColor, height: 1.4.h, fontSize: 16.sp),
          ),
          SizedBox(
            width: 5.w,
          ),
          Visibility(
              visible: idx != item.length - 1,
              child: Icon(
                Icons.arrow_circle_right_sharp,
                color: item[idx].primaryColor,
              ))
        ],
      ),
    );
  }

  Widget _buildIndicator(int itemsCount, int idx, List<OnBoardingModel> item) {
    return SmoothPageIndicator(
      controller: _pageController,
      count: itemsCount,
      effect: JumpingDotEffect(
        dotHeight: 10,
        dotWidth: 10,
        jumpScale: .8,
        verticalOffset: 15,
        dotColor: Colors.grey,
        activeDotColor: item[idx].primaryColor!,
      ),
    );
  }

  void _nextPage() {
    _pageController.nextPage(
        duration: Duration(milliseconds: 400), curve: Curves.ease);
  }

  SystemUiOverlayStyle _buildHeader(int index, List<OnBoardingModel> item) {
    return SystemUiOverlayStyle(statusBarColor: item[index].secondaryColor);
  }
}
