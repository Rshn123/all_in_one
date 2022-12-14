import 'package:flutter/material.dart';

import '../constants/routes_constants.dart';
import '../designs/bottom_navigation/main_bottom_navigation.dart';
import '../designs/bottom_navigation/pages/bottom_navigations.dart';
import '../designs/bottom_navigation/pages/curve_bottom_navigation.dart';
import '../designs/home/home_screen.dart';

class AllInOneRoute {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case bottomNavigationRoute:
        return _getPageRoute(const MainBottomNavigation());
      case homeScreenRoute:
        return _getPageRoute(const HomeScreen());
      case pillBottomNavigationRoute:
        return _getPageRoute(PillBottomNavigations());
      case curveBottomNavigationRoute:
        return _getPageRoute(const BottomNavBarV2());
    }

    return null;
  }
}

PageRoute _getPageRoute(Widget viewToShow) {
  return MaterialPageRoute(builder: (_) => viewToShow);
}
