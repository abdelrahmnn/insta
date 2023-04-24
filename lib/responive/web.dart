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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(
              Icons.home,
              color: primaryColor,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.search,
              color: secondaryColor,
            ),
            onPressed: () {
              _pageController.jumpToPage(1);
            },
          ),
          IconButton(
            icon: Icon(
              Icons.add_a_photo,
              color: secondaryColor,
            ),
            onPressed: () {
              _pageController.jumpToPage(2);
            },
          ),
          IconButton(
            icon: Icon(
              Icons.favorite,
              color: secondaryColor,
            ),
            onPressed: () {
              _pageController.jumpToPage(3);
            },
          ),
          IconButton(
            icon: Icon(
              Icons.person,
              color: secondaryColor,
            ),
            onPressed: () {
              _pageController.jumpToPage(3);
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
          add_post(),
        ],
      ),
    );
  }
}
