class OnBoardingContent {
  final String image;
  final String desc;

  OnBoardingContent({required this.image, required this.desc});
}

List<OnBoardingContent> contents = [
  OnBoardingContent(
    image: "assets/images/on_boarding_1.png",
    desc: "Browse special offers and search for"
        " \nideal homes using our real estate"
        " \napplication",
  ),
  OnBoardingContent(
    image: "assets/images/on_boarding_2.png",
    desc: "Get inspired and get personal \n"
        "recommendations based on your real \n"
        "estate preferences",
  ),
  OnBoardingContent(
    image: "assets/images/on_boarding_3.png",
    desc: "Browse a large selection of properties and \n"
        "save your favorites for later reference",
  ),
];
