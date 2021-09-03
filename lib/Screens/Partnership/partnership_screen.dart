import 'package:flutter/material.dart';
import 'package:interview_practicing/Screens/common_components/app_bar.dart';
import 'package:interview_practicing/constants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class PartnershipScreen extends StatelessWidget {
  static const String route = '/partnership';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomAppBar(),
            SizedBox(
              height: kDefaultPadding * 4,
            ),
            AnimatedTextKit(
              totalRepeatCount: 1,
              animatedTexts: [
                TyperAnimatedText(
                  'Do you want to be interviewer?',
                  textStyle: Theme.of(context)
                      .textTheme
                      .headline3
                      .copyWith(color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              height: kDefaultPadding * 1.5,
            ),
            AnimatedTextKit(
              totalRepeatCount: 1,
              animatedTexts: [
                TyperAnimatedText(
                  'If you work in big company write email and attach your CV',
                  textStyle: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(color: Colors.white70),
                ),
              ],
            ),
            AnimatedTextKit(
              totalRepeatCount: 1,
              animatedTexts: [
                TyperAnimatedText(
                  'stark042004@yandex',
                  textStyle: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(color: Colors.white70),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
