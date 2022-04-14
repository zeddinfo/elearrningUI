// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../../ui/views/onboarding/onboarding_view.dart';
import '../../ui/views/startup/startup_view.dart';

class Routes {
  static const String startupView = '/startup-view';
  static const String onBoardingView = '/';
  static const all = <String>{
    startupView,
    onBoardingView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.startupView, page: StartupView),
    RouteDef(Routes.onBoardingView, page: OnBoardingView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    StartupView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const StartupView(),
        settings: data,
      );
    },
    OnBoardingView: (data) {
      var args = data.getArgs<OnBoardingViewArguments>(
        orElse: () => OnBoardingViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => OnBoardingView(key: args.key),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// OnBoardingView arguments holder class
class OnBoardingViewArguments {
  final Key? key;
  OnBoardingViewArguments({this.key});
}
