import 'package:cookery_app/config/size_config.dart';
import 'package:flutter/material.dart';
import 'components/welcome_buttons_container.dart';
import 'components/welcome_landscape.dart';
import 'components/welcome_portriat.dart';
import 'components/welcome_text_container.dart';
import 'components/welome_dish_image.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MediaQuery.of(context).orientation == SizeConfig.orientation
          ? WelcomePortriatWidget()
          : WelcomeScreenLandscapeWidget(),
    );
  }
}
