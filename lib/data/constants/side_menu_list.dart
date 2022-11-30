import 'package:flutter/material.dart';

import '../../view/login/login.dart';
import '../../view/checker/check_page.dart';
import '../../view/signup_page/signup_page.dart';
import '../../view/privacy_policy/privacy_policy.dart';
import '../../view/setting/setting_page.dart';
import '../model/menu_data.dart';

final List<MenuData> sideMenuList = [
  MenuData(
    name: CheckerPage.pageName,
    icon: Icons.check,
    path: CheckerPage.pathName,
  ),
  MenuData(
      name: LoginPage.pageName,
      icon: Icons.assessment_outlined,
      path: LoginPage.pathName),
  MenuData(
    name: SignupPage.pageName,
    icon: Icons.history,
    path: SignupPage.pathName,
  ),
  MenuData(
    name: PrivacyPolicy.pageName,
    icon: Icons.privacy_tip,
    path: PrivacyPolicy.pathName,
  ),
  MenuData(
    name: SettingPage.pageName,
    icon: Icons.settings,
    path: SettingPage.pathName,
  ),
];
