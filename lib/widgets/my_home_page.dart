import 'package:flutter/material.dart';

import 'color_changer.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ColorChanger()
    );
  }
}