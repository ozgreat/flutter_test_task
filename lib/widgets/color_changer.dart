import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorChanger extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ColorChangerState();
}

class _ColorChangerState extends State<ColorChanger> {
  /// Default color
  Color __currentColor = Colors.red;

  /// List of colors
  List<Color> __colors = Colors.primaries;

  ///Len of __colors
  int __colorsLen = Colors.primaries.length;

  ///Random
  Random __rand = new Random();

  void __changeColor() =>
      setState(() => __currentColor = __colors[__rand.nextInt(__colorsLen)]);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: __changeColor,
      child: Container(
        color: __currentColor,
        child: Center(
          child: Text(
            'Hey there',
          ),
        ),
      ),
    );
  }
}
