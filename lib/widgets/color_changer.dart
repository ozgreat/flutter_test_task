import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorChanger extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ColorChangerState();
}

class _ColorChangerState extends State<ColorChanger> {
  /// Default color
  Color _currentColor = Colors.red;

  /// List of colors
  List<Color> _colors = Colors.primaries;

  ///Len of __colors
  int _colorsLen = Colors.primaries.length;

  ///Random
  Random _rand = new Random();

  void _changeColor() =>
      setState(() => _currentColor = _colors[_rand.nextInt(_colorsLen)]);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeColor,
      child: Container(
        color: _currentColor,
        child: Center(
          child: Text(
            'Hey there',
          ),
        ),
      ),
    );
  }
}
