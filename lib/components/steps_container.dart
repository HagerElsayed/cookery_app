import 'package:cookery_app/config/size_config.dart';
import 'package:cookery_app/constants/color.dart';
import 'package:cookery_app/models/onboarding_model.dart';
import 'package:flutter/material.dart';

class StepsContainer extends StatelessWidget {
  const StepsContainer(
      {Key key,
      @required this.page,
      @required List<OnboardingModel> list,
      @required PageController controller,
      @required this.showAnimatedContainerCallBack})
      : _list = list,
        _controller = controller,
        super(key: key);

  final int page;
  final List<OnboardingModel> _list;
  final PageController _controller;
  final Function showAnimatedContainerCallBack;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.defaultSize * 4.5,
      height: SizeConfig.defaultSize * 4.5,
      child: Stack(
        children: [
          Container(
            width: SizeConfig.defaultSize * 4.5,
            height: SizeConfig.defaultSize * 4.5,
            child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(kDefaultAppColor),
                value: (page + 1) / (_list.length + 1)),
          ),
          Center(
            child: InkWell(
              onTap: () {
                if (page < _list.length && page != _list.length - 1) {
                  _controller.animateToPage(page + 1,
                      duration: Duration(microseconds: 500),
                      curve: Curves.easeInCirc);
                  showAnimatedContainerCallBack(false);
                } else {
                  //TODO:- show animated Container
                  showAnimatedContainerCallBack(true);
                }
              },
              child: Container(
                width: SizeConfig.defaultSize * 3.5,
                height: SizeConfig.defaultSize * 3.5,
                decoration: BoxDecoration(
                    color: kDefaultAppColor,
                    borderRadius: BorderRadius.all(Radius.circular(100.0))),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
