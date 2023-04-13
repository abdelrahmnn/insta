import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class responive extends StatefulWidget {
  final mymobileSerren;
  final mywebSerren;

  const responive(
      {super.key, required this.mymobileSerren, required this.mywebSerren});

  @override
  State<responive> createState() => _responiveState();
}

class _responiveState extends State<responive> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext, BoxConstraints) {
      if (BoxConstraints.maxWidth > 600) {
        return widget.mywebSerren;
      } else {
        return widget.mymobileSerren;
      }
    });
  }
}
