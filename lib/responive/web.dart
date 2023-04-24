import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram/shared/colors.dart';

class webSerren extends StatefulWidget {
  const webSerren({super.key});

  @override
  State<webSerren> createState() => _webSerrenState();
}

class _webSerrenState extends State<webSerren> {
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
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.add_a_photo,
              color: secondaryColor,
            ),
            onPressed: () {},
          ),
          //   IconButton(
          //     icon: Icon(
          //       Icons.favorite,
          //       color: secondaryColor,
          //     ),
          //     onPressed: () {},
          //   ),
          //   IconButton(
          //     icon: Icon(
          //       Icons.person,
          //       color: secondaryColor,
          //     ),
          //     onPressed: () {},
          //   ),
        ],
        backgroundColor: mobileBackgroundColor,
        title: SvgPicture.asset(
          "assets/img/instagram.svg",
          color: primaryColor,
          height: 32,
        ),
      ),
    );
  }
}
