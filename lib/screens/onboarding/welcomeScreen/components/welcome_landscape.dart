import 'package:cookery_app/config/size_config.dart';
import 'package:cookery_app/screens/onboarding/welcomeScreen/components/welcome_buttons_container.dart';
import 'package:cookery_app/screens/onboarding/welcomeScreen/components/welcome_text_container.dart';
import 'package:cookery_app/screens/onboarding/welcomeScreen/components/welome_dish_image.dart';
import 'package:flutter/material.dart';

class WelcomeScreenLandscapeWidget extends StatelessWidget {
  const WelcomeScreenLandscapeWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                WelcomeTextContainer(),
                SizedBox(
                  height: SizeConfig.defaultSize * 5,
                ),
                WelcomeButtonContainer(),
              ],
            ),
          ),
        ),
        Align(alignment: Alignment.topRight, child: WelcomeDishImageWidget())
      ],
    );
  }
}
