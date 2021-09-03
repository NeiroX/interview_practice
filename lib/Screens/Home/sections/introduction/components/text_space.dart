import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:interview_practicing/constants.dart';

class TextSpace extends StatefulWidget {
  @override
  State<TextSpace> createState() => _TextSpaceState();
}

class _TextSpaceState extends State<TextSpace> {
  bool isFinished = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding * 1.5),
      child: Column(
        children: [
          AnimatedTextKit(
            onFinished: () {
              setState(() {
                isFinished = true;
              });
            },
            animatedTexts: [
              TyperAnimatedText(
                'Do you want to work for the best companies?',
                textStyle: Theme.of(context).textTheme.headline3.copyWith(
                      color: Colors.white,
                    ),
                speed: const Duration(milliseconds: 63),
              ),
            ],
            totalRepeatCount: 1,
          ),
          SizedBox(height: kDefaultPadding * 1.5),
          if (isFinished)
            Container(
              width: 800,
              child: AnimatedTextKit(
                totalRepeatCount: 1,
                animatedTexts: [
                  TyperAnimatedText(
                    'Our service offers you preparation for interviews with the best companies with trainers',
                    textAlign: TextAlign.center,
                    textStyle: Theme.of(context).textTheme.headline5.copyWith(
                          color: Colors.white70,
                          fontWeight: FontWeight.w200,
                        ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
