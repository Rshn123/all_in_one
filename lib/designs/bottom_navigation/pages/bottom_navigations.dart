import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/bottom_navigation_provider.dart';

class BottomNavigations extends StatelessWidget {
  const BottomNavigations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: const Color(0xff161326),
                borderRadius: BorderRadius.circular(40)),
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(15),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CustomIcons(
                    icon: Icons.home_outlined,
                    index: 1,
                    text: "Home",
                  ),
                  CustomIcons(
                    icon: Icons.search_outlined,
                    index: 2,
                    text: "Search",
                  ),
                  CustomIcons(
                    icon: Icons.local_offer_outlined,
                    index: 3,
                    text: "Offer",
                  ),
                  CustomIcons(
                    icon: Icons.shopping_cart_outlined,
                    index: 4,
                    text: "Cart",
                  ),
                  CustomIcons(
                    icon: Icons.person_outline_outlined,
                    index: 5,
                    text: "Profile",
                  )
                ]),
          ),
        ],
      )),
    );
  }
}

class CustomIcons extends StatelessWidget {
  final IconData icon;
  final int index;
  final String text;
  const CustomIcons({
    required this.icon,
    required this.index,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavigationProvider>(
        builder: (context, provider, child) {
      return provider.currentIndex == index
          ? Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: Row(
                children: [
                  IconButton(
                    splashColor: Colors.blue,
                    icon: Icon(
                      icon,
                      color: const Color(0xff161326),
                    ),
                    onPressed: () {
                      provider.changeIndex(index);
                    },
                  ),
                  Text(
                    text,
                    style: const TextStyle(
                        color: Color(0xff161326), fontWeight: FontWeight.bold),
                  )
                ],
              ))
          : IconButton(
              splashColor: Colors.blue,
              icon: Icon(
                icon,
                color: const Color(0xff73717f),
              ),
              onPressed: () {
                provider.changeIndex(index);
              },
            );
    });
  }
}
