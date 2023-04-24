import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram/screens/add_post.dart';
import 'package:instagram/screens/home.dart';
import 'package:instagram/screens/profile.dart';
import 'package:instagram/screens/search.dart';
import 'package:instagram/shared/colors.dart';

class webSerren extends StatefulWidget {
  const webSerren({super.key});

  @override
  State<webSerren> createState() => _webSerrenState();
}

class _webSerrenState extends State<webSerren> {
  final PageController _pageController = PageController();
  int page = 0;

  Navigat2Screen(int indexx) {
    _pageController.jumpToPage(indexx);
    setState(() {
      page = indexx;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(
              Icons.home,
              color: page == 0 ? primaryColor : secondaryColor,
            ),
            onPressed: () {
              Navigat2Screen(0);
              setState(() {
                page = 0;
              });
            },
          ),
          IconButton(
            icon: Icon(
              Icons.search,
              color: page == 1 ? primaryColor : secondaryColor,
            ),
            onPressed: () {
              Navigat2Screen(1);
              setState(() {
                page = 1;
              });
            },
          ),
          IconButton(
            icon: Icon(
              Icons.add_a_photo,
              color: page == 2 ? primaryColor : secondaryColor,
            ),
            onPressed: () {
              Navigat2Screen(2);
              setState(() {
                page = 2;
              });
            },
          ),
          IconButton(
            icon: Icon(
              Icons.favorite,
              color: page == 3 ? primaryColor : secondaryColor,
            ),
            onPressed: () {
              Navigat2Screen(3);
            },
          ),
          IconButton(
            icon: Icon(
              Icons.person,
              color: page == 4 ? primaryColor : secondaryColor,
            ),
            onPressed: () {
              Navigat2Screen(4);
            },
          ),
        ],
        backgroundColor: mobileBackgroundColor,
        title: SvgPicture.asset(
          "assets/img/instagram.svg",
          color: primaryColor,
          height: 32,
        ),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {},
        physics: NeverScrollableScrollPhysics(),
        // controller: _pageController,
        children: [
          home(),
          search(),
          profile(),
          Center(child: Text("profile")),
          add_post(
            child: Text("data"),
          ),
        ],
      ),
    );
  }
}
