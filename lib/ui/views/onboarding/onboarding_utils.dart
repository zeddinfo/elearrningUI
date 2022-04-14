import 'package:superappsnusa/application/app/contants/custom_color.dart';
import 'package:superappsnusa/application/models/OnBoardingModel.dart';

class OnBoardingUtils {
  static List<OnBoardingModel> getItemSplashScreen() {
    final List<OnBoardingModel> onBoardingModels = [];

    return onBoardingModels
      ..add(
        OnBoardingModel(
          title: "Halo",
          primaryColor: CustomColor.primaryRedColor,
          secondaryColor: CustomColor.secondaryRedColor,
          type: 'rounded',
          description:
              "Selamat datang di aplikasi KlikNSS, temukan layanan seputar motor Honda disini...",
        ),
      )
      ..add(
        OnBoardingModel(
          title: "Pengajuan Sepeda Motor",
          primaryColor: CustomColor.primaryBlueColor,
          secondaryColor: CustomColor.secondaryBlueColor,
          type: 'not_rounded',
          description:
              "Dapatkan motor Honda impianmu, lakukan pengajuan di KlikNSS",
        ),
      )
      ..add(
        OnBoardingModel(
          title: "Pembiayaan Dana",
          primaryColor: CustomColor.primaryGreenColor,
          secondaryColor: CustomColor.secondaryGreenColor,
          type: 'not_rounded',
          description:
              "Butuh dana untuk mengembangkan usaha, renovasi rumah, biaya kesahatan, biaya pendidikan atau rekreasi bareng keluarga? KlikNSS menawarkan fasilitas.",
        ),
      )
      ..add(
        OnBoardingModel(
          title: "Sparepart",
          primaryColor: CustomColor.primaryYellowColor,
          secondaryColor: CustomColor.secondaryYellowColor,
          type: 'not_rounded',
          description:
              "Kamu dapat melakukan pembelian sepeda motor honda disini.",
        ),
      );
  }
}
