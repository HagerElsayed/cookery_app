import 'package:cookery_app/config/size_config.dart';
import 'package:flutter/material.dart';

class WelcomeDishImageWidget extends StatelessWidget {
  const WelcomeDishImageWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //TODo:- we need to add translation values for negative margin
      transform: Matrix4.translationValues(
          SizeConfig.defaultSize * 5, SizeConfig.defaultSize * -5, 0.0),
      child: Image.asset(
        "images/welcome_dish.png",
        height: SizeConfig.defaultSize * 32,
        width: SizeConfig.defaultSize * 26,
      ),
    );
  }
}
