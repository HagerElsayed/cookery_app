class OnboardingModel {
  String image;
  String text;
  String title;

  OnboardingModel({this.image, this.text, this.title});
  static List<OnboardingModel> list = [
    OnboardingModel(
        image: "images/1.png",
        title: "Cook",
        text:
            "cooking your favorite recipe became easy now, you just need to follow the steps"),
    OnboardingModel(
        image: "images/2.png",
        title: "Enjoy",
        text:
            "Start with foods/recipes you enjoy. search for the foods you know you like, find a trusted recipe source"),
    OnboardingModel(
        image: "images/3.png",
        title: "Be confident",
        text:
            "You can do this. Step up to the cutting board, the oven, or the stovetop with full confidence in your abilities")
  ];
}
