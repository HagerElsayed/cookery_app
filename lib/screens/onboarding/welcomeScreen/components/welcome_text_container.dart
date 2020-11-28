import 'package:cookery_app/components/common_text.dart';
import 'package:cookery_app/config/size_config.dart';
import 'package:cookery_app/constants/color.dart';
import 'package:flutter/material.dart';

class WelcomeTextContainer extends StatelessWidget {
  const WelcomeTextContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CommonText(text: "Welcome", fontSize: 3, fontWeight: FontWeight.bold),
          CommonText(text: "to", fontSize: 3, fontWeight: FontWeight.bold),
          RichText(
            text: TextSpan(
                text: "C",
                style: TextStyle(
                    color: kTextColor,
                    fontSize: SizeConfig.defaultSize * 3,
                    fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: "o",
                    style: TextStyle(
                        color: kDefaultAppColor,
                        fontSize: SizeConfig.defaultSize * 3,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                      text: "okery",
                      style: TextStyle(
                          color: kTextColor,
                          fontSize: SizeConfig.defaultSize * 3,
                          fontWeight: FontWeight.bold))
                ]),
          )
        ],
      ),
    );
  }
}
