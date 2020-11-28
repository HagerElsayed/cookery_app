import 'package:cookery_app/config/size_config.dart';
import 'package:cookery_app/constants/color.dart';
import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  final String text;
  final Color textColor;
  final double fontSize;
  final double padding;
  final FontWeight fontWeight;
  CommonText(
      {this.text,
      this.textColor,
      this.fontWeight,
      this.padding,
      this.fontSize});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: textColor ?? kTextColor,
          fontWeight: fontWeight ?? FontWeight.w400,
          fontSize: SizeConfig.defaultSize * (fontSize ?? 1.8)),
    );
  }
}
