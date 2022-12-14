import 'package:all_in_one/constants/routes_constants.dart';
import 'package:all_in_one/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class MainBottomNavigation extends StatelessWidget {
  const MainBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: const [
          CustomElevatedButton(route: pillBottomNavigationRoute),
          CustomElevatedButton(route: curveBottomNavigationRoute)
        ],
      )),
    );
  }
}
