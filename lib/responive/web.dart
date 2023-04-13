import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

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
        title: Text("web Serren"),
      ),
    );
  }
}
