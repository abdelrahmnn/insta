import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram/shared/colors.dart';

class mobileSerren extends StatefulWidget {
  const mobileSerren({super.key});

  @override
  State<mobileSerren> createState() => _mobileSerrenState();
}

class _mobileSerrenState extends State<mobileSerren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("mobile Serren"),
      ),
      bottomNavigationBar:
          CupertinoTabBar(backgroundColor: mobileBackgroundColor, items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: primaryColor,
            ),
            label: "home"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: primaryColor,
            ),
            label: "home"),
      ]),
    );
  }
}
