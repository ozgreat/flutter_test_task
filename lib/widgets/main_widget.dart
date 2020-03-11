import 'package:flutter/material.dart';

import 'color_changer.dart';

class MainWidget extends StatelessWidget {
  MainWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ColorChanger());
  }
}
