import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorChanger extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ColorChangerState();
}

class _ColorChangerState extends State<ColorChanger> {
  int _colorCount = 0;

  void _changeColor() {
    var colors = Colors.primaries;
    var rand = new Random();
    setState(() {
      _colorCount = rand.nextInt(colors.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeColor,
      child: Container(
        color: Colors.primaries[_colorCount],
        child: Center(
          child: Text(
            'Hey there',
          ),
        ),
      ),
    );
  }
}
