// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram/shared/colors.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    final double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor:
          widthScreen > 600 ? webBackgroundColor : mobileBackgroundColor,
      appBar: widthScreen > 600
          ? null
          : AppBar(
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.messenger_outline,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.logout,
                    ))
              ],
              backgroundColor: mobileBackgroundColor,
              title: SvgPicture.asset(
                "assets/img/instagram.svg",
                color: primaryColor,
                height: 32,
              ),
            ),
      body: Container(
        decoration: BoxDecoration(
            color: mobileBackgroundColor,
            borderRadius: BorderRadius.circular(12)),
        margin: EdgeInsets.symmetric(
            vertical: 11, horizontal: widthScreen > 600 ? widthScreen / 4 : 0),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(125, 78, 91, 110),
                      ),
                      child: CircleAvatar(
                        radius: 26,
                        backgroundImage: NetworkImage(
                            "https://scontent.fcai21-4.fna.fbcdn.net/v/t39.30808-6/248379584_3759270507631363_3366834168759626723_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeE5ci7MNra4sLn0KSchARj8Q4bWcuEvP4hDhtZy4S8_iHXKc4R0JBSp0rIxEQp9VhgeWPRSy4Ustgy_hiyPEU8I&_nc_ohc=n5gOpNI7GZsAX_7L_cT&_nc_ht=scontent.fcai21-4.fna&oh=00_AfCywPN8Kn2KRmSkRF-dJ479Uo51A6sbJjjVoEu9YBSWUg&oe=644A50EF"),
                      ),
                    ),
                    SizedBox(
                      width: 17,
                    ),
                    Text(
                      "Abdelrhman",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_vert,
                    ))
              ],
            ),
          ),
          Image.network(
            "https://images.pexels.com/photos/699122/pexels-photo-699122.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height * 0.35,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 11),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite_border),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.send,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.bookmark_outline,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 0, 10),
            width: double.infinity,
            child: Text(
              "10 likes",
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 18, color: Color.fromARGB(255, 78, 81, 94)),
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 9,
              ),
              Text(
                "Abdelrhman",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(255, 189, 196, 199)),
              ),
              Text(
                "  Hello ;-)",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 15, color: Color.fromARGB(255, 189, 196, 199)),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.fromLTRB(10, 9, 9, 10),
              width: double.infinity,
              child: Text(
                "100 cooments",
                style: TextStyle(
                    fontSize: 16, color: Color.fromARGB(255, 78, 81, 94)),
                textAlign: TextAlign.start,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 0, 10),
            width: double.infinity,
            child: Text(
              "10 june 2022",
              style: TextStyle(
                  fontSize: 15, color: Color.fromARGB(255, 78, 81, 94)),
              textAlign: TextAlign.start,
            ),
          ),
        ]),
      ),
    );
  }
}
