import 'package:flutter/cupertino.dart';

class Screens extends StatelessWidget {
  final int color;
  final String text;
  const Screens({required this.color, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: Color(color)),
    );
  }
}
