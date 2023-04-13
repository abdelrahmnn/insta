// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram/screens/add_post.dart';
import 'package:instagram/screens/home.dart';
import 'package:instagram/screens/profile.dart';
import 'package:instagram/screens/search.dart';
import 'package:instagram/shared/colors.dart';

class mobileSerren extends StatefulWidget {
  const mobileSerren({super.key});

  @override
  State<mobileSerren> createState() => _mobileSerrenState();
}

class _mobileSerrenState extends State<mobileSerren> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("mobile Serren"),
        ),
        bottomNavigationBar: CupertinoTabBar(
            backgroundColor: mobileBackgroundColor,
            onTap: (index) {
              // navigate to the tabed page
              _pageController.jumpToPage(index);
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: primaryColor,
                  ),
                  label: "home"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                    color: secondaryColor,
                  ),
                  label: "home"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.add_circle,
                    color: secondaryColor,
                  ),
                  label: "home"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite,
                    color: secondaryColor,
                  ),
                  label: "home"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    color: secondaryColor,
                  ),
                  label: "home"),
            ]),
        body: PageView(
          //      onPageChanged: (index) {},
          physics: NeverScrollableScrollPhysics(),
          controller: _pageController,
          children: [
            home(),
            search(),
            profile(),
            Center(child: Text("chid")),
            add_post(),
          ],
        ));
  }
}
