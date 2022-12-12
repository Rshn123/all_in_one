import 'package:flutter/material.dart';

class MainBottomNavigation extends StatelessWidget {
  const MainBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          ElevatedButton(
              onPressed: () {}, child: Text("Simple Bottom Navigation")),
          ElevatedButton(
              onPressed: () {}, child: Text("Simple Bottom Navigation")),
          ElevatedButton(
              onPressed: () {}, child: Text("Simple Bottom Navigation")),
          ElevatedButton(
              onPressed: () {}, child: Text("Simple Bottom Navigation")),
        ],
      )),
    );
  }
}
