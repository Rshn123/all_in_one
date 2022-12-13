import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String route;
  final String buttonName;
  const CustomElevatedButton({
    required this.route,
    this.buttonName = "Add Button",
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
          onPressed: () {
            Navigator.pushNamed(context, route);
          },
          child: Text(buttonName)),
    );
  }
}
