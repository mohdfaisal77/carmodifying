import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class AppText extends StatelessWidget {

  double size;
  final String text;
  final Color color;
  AppText(
      {Key? key,
        required this.text,
        this.size=16,
        this.color=Colors.black12}
      ): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,

      ),
    );
  }
}
//shape: BoxShape.rectangle,
//                   borderRadius: BorderRadius.circular(9.0),