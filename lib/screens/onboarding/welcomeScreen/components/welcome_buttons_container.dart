import 'package:cookery_app/components/common_button.dart';
import 'package:cookery_app/config/size_config.dart';
import 'package:cookery_app/constants/color.dart';
import 'package:flutter/material.dart';

class WelcomeButtonContainer extends StatelessWidget {
  const WelcomeButtonContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      transform: Matrix4.translationValues(10, 0, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: CommonButtonWidget(
              title: 'Sign in',
              bgColor: Colors.white,
              textColor: kDefaultAppColor,
              borderColor: kLightGreyColor,
              width: SizeConfig.defaultSize * 18,
              raduis: MediaQuery.of(context).orientation == Orientation.portrait
                  ? BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      topLeft: Radius.circular(25))
                  : BorderRadius.all(Radius.circular(25)),
            ),
          ),
          SizedBox(
            height: SizeConfig.defaultSize * 1.6,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: CommonButtonWidget(
              title: 'Sign up',
              bgColor: kDefaultAppColor,
              textColor: Colors.white,
              width: SizeConfig.defaultSize * 18,
              raduis: MediaQuery.of(context).orientation == Orientation.portrait
                  ? BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      topLeft: Radius.circular(25))
                  : BorderRadius.all(Radius.circular(25)),
            ),
          )
        ],
      ),
    );
  }
}
