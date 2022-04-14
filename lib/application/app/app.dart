import 'package:dio/dio.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:superappsnusa/application/services/dio_service.dart';
import 'package:superappsnusa/ui/views/onboarding/onboarding_view.dart';
import 'package:superappsnusa/ui/views/startup/startup_view.dart';

@StackedApp(routes: [
  MaterialRoute(page: StartupView),
  MaterialRoute(page: OnBoardingView, initial: true),
], dependencies: [
  LazySingleton(classType: NavigationService),
  Singleton(
    classType: DioService,
    resolveUsing: DioService.getInstance,
    asType: Dio,
  ),
])
class AppSetup {}
