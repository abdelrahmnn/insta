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
  int currentpage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CupertinoTabBar(
            backgroundColor: mobileBackgroundColor,
            onTap: (index) {
              // navigate to the tabed page
              _pageController.jumpToPage(index);
              setState(() {
                currentpage = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: currentpage == 0 ? primaryColor : secondaryColor,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                    color: currentpage == 1 ? primaryColor : secondaryColor,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.add_circle,
                    color: currentpage == 2 ? primaryColor : secondaryColor,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite,
                    color: currentpage == 3 ? primaryColor : secondaryColor,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    color: currentpage == 4 ? primaryColor : secondaryColor,
                  ),
                  label: ""),
            ]),
        body: PageView(
          //      onPageChanged: (index) {},
          physics: NeverScrollableScrollPhysics(),
          controller: _pageController,
          children: [
            home(),
            search(),
            profile(),
            //   Center(child: Text("profile")),
            add_post(),
          ],
        ));
  }
}
