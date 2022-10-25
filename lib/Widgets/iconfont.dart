import 'package:flutter/material.dart';

// ignore: must_be_immutable
class IconFont extends StatelessWidget {
  Color? color;
  double? size;
  String? iconName;

  IconFont({Key? key, this.color, this.size, this.iconName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(iconName!,
        style: TextStyle(color: color, fontSize: size, fontFamily: 'orilla'));
  }
}
