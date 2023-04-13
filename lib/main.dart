import 'package:flutter/material.dart';

import 'package:instagram/responive/mobile.dart';
import 'package:instagram/responive/responive.dart';
import 'package:instagram/responive/web.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: responive(
        mymobileSerren: mobileSerren(),
        mywebSerren: webSerren(),
      ),
    );
  }
}
