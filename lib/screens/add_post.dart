// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram/shared/colors.dart';

class add_post extends StatefulWidget {
  const add_post({super.key, required Text child});

  @override
  State<add_post> createState() => _add_postState();
}

class _add_postState extends State<add_post> {
  @override
  Widget build(BuildContext context) {
    final double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: mobileBackgroundColor,
      appBar: AppBar(
        backgroundColor: mobileBackgroundColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                padding: const EdgeInsets.all(8.0), child: Text('Abdelrhman')),
            Image.asset(
              'assets/img/tt.png',
              fit: BoxFit.contain,
              height: 35,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 22),
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(125, 78, 91, 110),
                ),
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      "https://scontent.fcai21-4.fna.fbcdn.net/v/t39.30808-6/248379584_3759270507631363_3366834168759626723_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeE5ci7MNra4sLn0KSchARj8Q4bWcuEvP4hDhtZy4S8_iHXKc4R0JBSp0rIxEQp9VhgeWPRSy4Ustgy_hiyPEU8I&_nc_ohc=n5gOpNI7GZsAX_7L_cT&_nc_ht=scontent.fcai21-4.fna&oh=00_AfCywPN8Kn2KRmSkRF-dJ479Uo51A6sbJjjVoEu9YBSWUg&oe=644A50EF"),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          "1",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "posts",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 17,
                    ),
                    Column(
                      children: [
                        Text(
                          "1.5M",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Followers",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 17,
                    ),
                    Column(
                      children: [
                        Text(
                          "15",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Following",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
              margin: EdgeInsets.fromLTRB(35, 10, 0, 0),
              width: double.infinity,
              child: Text("😎 عبدالرحمن")),
          SizedBox(
            height: 15,
          ),
          Divider(
            color: Colors.white,
            thickness: widthScreen > 600 ? 0.06 : 0.44,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.edit,
                  color: Colors.grey,
                  size: 24.0,
                ),
                label: Text(
                  "Edit profile",
                  style: TextStyle(fontSize: 17),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(0, 90, 103, 223)),
                    padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                        vertical: widthScreen > 600 ? 19 : 10, horizontal: 33)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                      side: BorderSide(
                          color: Color.fromARGB(109, 255, 255, 255),
                          style: BorderStyle.solid),
                    ))),
              ),
              SizedBox(
                width: 15,
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.logout,
                  size: 24.0,
                ),
                label: Text(
                  "log out",
                  style: TextStyle(fontSize: 17),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(202, 255, 10, 10)),
                    padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                        vertical: widthScreen > 600 ? 19 : 10, horizontal: 33)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ))),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: Colors.white,
            thickness: widthScreen > 600 ? 0.06 : 0.44,
          ),
          SizedBox(
            height: 19,
          ),
          Expanded(
            child: Padding(
              padding: widthScreen > 600
                  ? const EdgeInsets.all(66.0)
                  : const EdgeInsets.all(3.0),
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: Image.network(
                        "https://cdn1-m.alittihad.ae/store/archive/image/2021/10/22/6266a092-72dd-4a2f-82a4-d22ed9d2cc59.jpg?width=1300",
                        // height: 333,
                        // width: 100,

                        fit: BoxFit.cover,
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
