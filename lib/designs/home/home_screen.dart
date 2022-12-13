import '../../constants/routes_constants.dart';
import 'package:flutter/material.dart';

import '../../widgets/index.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: const [
          CustomElevatedButton(
            route: bottomNavigationRoute,
            buttonName: "Bottom Navigation",
          ),
          CustomElevatedButton(route: bottomNavigationRoute),
          CustomElevatedButton(route: bottomNavigationRoute),
        ],
      )),
    );
  }
}
