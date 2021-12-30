// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../ui/views/home/home_view.dart';
import '../ui/views/home1/home1_view.dart';
import '../ui/views/login/login_view.dart';
import '../ui/views/signup/signup_view.dart';
import '../ui/views/upload/upload_view.dart';

class Routes {
  static const String loginView = '/';
  static const String signUpView = '/sign-up-view';
  static const String homeView = '/home-view';
  static const String home1View = '/home1-view';
  static const String uploadView = '/upload-view';
  static const all = <String>{
    loginView,
    signUpView,
    homeView,
    home1View,
    uploadView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.loginView, page: LoginView),
    RouteDef(Routes.signUpView, page: SignUpView),
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.home1View, page: Home1View),
    RouteDef(Routes.uploadView, page: UploadView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    LoginView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const LoginView(),
        settings: data,
      );
    },
    SignUpView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const SignUpView(),
        settings: data,
      );
    },
    HomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const HomeView(),
        settings: data,
      );
    },
    Home1View: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const Home1View(),
        settings: data,
      );
    },
    UploadView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const UploadView(),
        settings: data,
      );
    },
  };
}
