import 'package:flutter/material.dart';
import 'package:figmanucleus/presentation/screen_one_screen/screen_one_screen.dart';
import 'package:figmanucleus/presentation/screen_three_screen/screen_three_screen.dart';
import 'package:figmanucleus/presentation/app_navigation_screen/app_navigation_screen.dart';

import '../presentation/login/login_page.dart';

class AppRoutes {
  static const String LoginScreen = '/login_screen';
  static const String screenOneScreen = '/screen_one_screen';
  static const String screenThreeScreen = '/screen_three_screen';
  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    AppRoutes.LoginScreen: (context) => LoginPage(),
    AppRoutes.screenOneScreen: (context) => ScreenOneScreen(),
    AppRoutes.screenThreeScreen: (context) => ScreenThreeScreen(),
    AppRoutes.appNavigationScreen: (context) => AppNavigationScreen()
  };
}
