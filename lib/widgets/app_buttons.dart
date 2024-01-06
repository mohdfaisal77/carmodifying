import 'package:flutter/cupertino.dart';

// ignore: must_be_immutable
class AppButtons extends StatelessWidget {
  final Color textColor;
  final Color backgroundColor;
  final Color borderColor;
  final String text;
  IconData? icon;
  double width;
  double height;
  VoidCallback onTap;
  AppButtons({Key ? key,
    required this.textColor,
    required this.backgroundColor,
    required this.borderColor,
    required this.text,
     this.icon,
    required this.width,
    required this.height,
    required this.onTap,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Add onTap callback here
      child:Container ( width:width,
      height: height,
      child:Center(
        child: Text(
          text,
          style: TextStyle(
            fontFamily: 'Poppins',
            color: textColor
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(15),
        border:Border.all(
          color: borderColor,
          width: 1.0,
        )
      ),
      )
    );
  }
}
