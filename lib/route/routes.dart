import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_transition/page_transition.dart';

import '../data/repository/horizon.dart';
import '../view/about/about.dart';
import '../view/login/login.dart';
import '../view/checker/check_page.dart';
import '../view/signup_page/signup_page.dart';
import '../view/layout/layout.dart';
import '../view/privacy_policy/privacy_policy.dart';
import '../view/setting/setting_page.dart';
import '../view/widgets/side_menu/cubit/packageinfo_cubit.dart';

class Routes {
  final Horizon horizon;
  Routes({required this.horizon});
  Route? onGenerateRoute(RouteSettings settings) {
    // final args = settings.arguments;

    switch (settings.name) {
      case CheckerPage.pathName:
        return PageTransition(
          type: PageTransitionType.scale,
          alignment: Alignment.centerLeft,
          child: const CheckerPage(),
        );
      case SettingPage.pathName:
        return PageTransition(
          type: PageTransitionType.scale,
          alignment: Alignment.centerLeft,
          child: const SettingPage(),
        );
      case SiteLayoutPage.pathName:
        return PageTransition(
          type: PageTransitionType.scale,
          alignment: Alignment.centerLeft,
          child: const SiteLayoutPage(),
        );
      case LoginPage.pathName:
        return PageTransition(
          type: PageTransitionType.scale,
          alignment: Alignment.centerLeft,
          child: const LoginPage(),
        );
      case SignupPage.pathName:
        return PageTransition(
          type: PageTransitionType.scale,
          alignment: Alignment.centerLeft,
          child: const SignupPage(),
        );
      case About.pathName:
        return PageTransition(
          type: PageTransitionType.topToBottom,
          alignment: Alignment.center,
          child: BlocProvider(
            create: (context) => PackageinfoCubit(),
            child: const About(),
          ),
        );
      case PrivacyPolicy.pathName:
        return PageTransition(
          type: PageTransitionType.scale,
          alignment: Alignment.centerLeft,
          child: const PrivacyPolicy(),
        );
      default:
        return null;
    }
  }
}
