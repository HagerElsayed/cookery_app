import 'package:cookery_app/components/animated_container.dart';
import 'package:cookery_app/components/main_content.dart';
import 'package:cookery_app/components/skip_button.dart';
import 'package:cookery_app/components/steps_container.dart';
import 'package:cookery_app/config/size_config.dart';
import 'package:cookery_app/models/onboarding_model.dart';
import 'package:cookery_app/screens/onboarding/welcomeScreen/welcome_screen.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  List<OnboardingModel> _list = OnboardingModel.list;
  int page = 0;
  var _controller = PageController();
  var showAnimatedContainer = false;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    _controller.addListener(() {
      setState(() {
        page = _controller.page.round();
      });
    });
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            showAnimatedContainer
                ? Center(
                    child: MyAnimatedContainer(),
                  )
                : SafeArea(
                    child: Column(
                      children: [
                        SkipButton(),
                        Expanded(
                          child: PageView.builder(
                              controller: _controller,
                              itemCount: _list.length,
                              itemBuilder: (context, index) => MainContent(
                                    list: _list,
                                    index: index,
                                  )),
                        ),
                        StepsContainer(
                          page: page,
                          list: _list,
                          controller: _controller,
                          showAnimatedContainerCallBack: (value) {
                            setState(() {
                              showAnimatedContainer = value;
                              if (value) {
                                Future.delayed(Duration(seconds: 1), () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              WelcomeScreen()));
                                });
                              }
                            });
                          },
                        ),
                        SizedBox(
                          height: SizeConfig.defaultSize * 4,
                        )
                      ],
                    ),
                  ),
          ],
        ));
  }
}
