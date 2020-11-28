import 'package:cookery_app/components/common_text.dart';
import 'package:cookery_app/constants/color.dart';
import 'package:flutter/material.dart';

class CommonButtonWidget extends StatelessWidget {
  final Function onTap;
  final Color textColor;
  final Color bgColor;
  final String title;
  final double textSizePercentage;
  final double width;
  final double height;
  final Color borderColor;
  final raduis;
  CommonButtonWidget(
      {this.textColor,
      this.onTap,
      this.title,
      this.width,
      this.height,
      this.bgColor,
      this.textSizePercentage,
      this.borderColor,
      this.raduis});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height ?? 50,
      decoration: BoxDecoration(
          color: bgColor ?? kDefaultAppColor,
          border:
              Border.all(color: borderColor ?? Colors.transparent, width: 1),
          borderRadius: raduis ??
              BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  topLeft: Radius.circular(25))),
      child: Center(
        child: CommonText(
          text: title,
          textColor: textColor ?? kTextColor,
          fontWeight: FontWeight.bold,
          fontSize: textSizePercentage,
        ),
      ),
    );
  }
}
