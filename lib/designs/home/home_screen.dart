import 'package:all_in_one/constants/routes_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, bottomNavigationRoute);
              },
              child: const Text("hello world"))
        ],
      )),
    );
  }
}
