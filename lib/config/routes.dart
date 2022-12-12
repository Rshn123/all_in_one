import 'package:all_in_one/designs/bottom_navigation/main_bottom_navigation.dart';
import 'package:all_in_one/designs/home/home_screen.dart';
import 'package:flutter/material.dart';

import '../constants/routes_constants.dart';

class AllInOneRoute {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case bottomNavigationRoute:
        return _getPageRoute(const MainBottomNavigation());
      case homeScreenRoute:
        return _getPageRoute(const HomeScreen());
    }
    return null;
  }
}

PageRoute _getPageRoute(Widget viewToShow) {
  return MaterialPageRoute(builder: (_) => viewToShow);
}
