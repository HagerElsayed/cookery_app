import 'package:cookery_app/animations/fade_animation.dart';
import 'package:cookery_app/config/size_config.dart';
import 'package:cookery_app/constants/color.dart';
import 'package:cookery_app/models/onboarding_model.dart';
import 'package:flutter/material.dart';

class MainContent extends StatelessWidget {
  const MainContent(
      {Key key, @required List<OnboardingModel> list, @required this.index})
      : _list = list,
        super(key: key);

  final List<OnboardingModel> _list;
  final index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(SizeConfig.defaultSize * 2),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: FadeAnimation(
              0.5,
              Image.asset(
                _list[index].image,
                height: SizeConfig.defaultSize * 30,
                width: SizeConfig.defaultSize * 30,
              ),
            ),
          ),
          FadeAnimation(
            0.9,
            Text(
              _list[index].title,
              style: TextStyle(
                  color: kTextColor,
                  fontWeight: FontWeight.w500,
                  fontSize: SizeConfig.defaultSize * 2.6),
            ),
          ),
          SizedBox(
            height: SizeConfig.defaultSize,
          ),
          FadeAnimation(
            1.1,
            Text(
              _list[index].text,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: kLightGreyColor,
                  fontWeight: FontWeight.w400,
                  fontSize: SizeConfig.defaultSize * 1.4),
            ),
          ),
        ],
      ),
    );
  }
}
