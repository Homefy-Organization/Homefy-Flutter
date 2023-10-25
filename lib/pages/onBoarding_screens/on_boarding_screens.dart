import 'package:flutter/material.dart';
import 'package:homefy/pages/login_screen/login_screen.dart';
import 'package:homefy/pages/onBoarding_screens/on_boarding_content.dart';

class OnBoarding extends StatefulWidget {
  static const String routeName = "on-boarding";

  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int currentIndex = 0;
  late PageController controller;

  @override
  void initState() {
    controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Scaffold(
      body: PageView.builder(
          controller: controller,
          itemCount: contents.length,
          onPageChanged: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
          itemBuilder: (_, i) {
            return Column(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      width: mediaQuery.width,
                      child: Image.asset(
                        contents[i].image,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 25, horizontal: 10),
                        child: SizedBox(
                          width: mediaQuery.width * 0.2,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, LoginScreen.routeName);
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: theme.colorScheme.primary,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                )),
                            child: Text(
                              "Skip",
                              style: theme.textTheme.labelSmall,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: mediaQuery.height * 0.04),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Find best Place ",
                      style: theme.textTheme.labelMedium!
                          .copyWith(color: theme.colorScheme.primary),
                    ),
                    Text(
                      "To Stay In good Price",
                      style: theme.textTheme.labelMedium,
                    ),
                  ],
                ),
                SizedBox(height: mediaQuery.height * 0.04),
                Text(
                  contents[i].desc,
                  style: theme.textTheme.bodyMedium,
                ),
                SizedBox(height: mediaQuery.height * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    contents.length,
                    (index) => buildContainer(index, context),
                  ),
                ),
                SizedBox(height: mediaQuery.height * 0.02),
                SizedBox(
                  width: mediaQuery.width * 0.42,
                  height: mediaQuery.height * 0.065,
                  child: ElevatedButton(
                    onPressed: () {
                      if (currentIndex == contents.length - 1) {
                        Navigator.pushReplacementNamed(
                            context, LoginScreen.routeName);
                      }
                      controller.nextPage(
                        duration: const Duration(milliseconds: 800),
                        curve: Curves.linear,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: theme.colorScheme.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        )),
                    child: Text(
                      currentIndex == contents.length - 1
                          ? "Lets Start"
                          : "Next",
                      style: theme.textTheme.labelSmall!.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }

  Container buildContainer(int index, BuildContext context) {
    return Container(
      height: 8,
      width: currentIndex == index ? 25 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
