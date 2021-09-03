import 'package:flutter/material.dart';
import 'package:interview_practicing/Screens/Home/sections/introduction/introduction_section.dart';
import 'package:interview_practicing/constants.dart';
import '../common_components/app_bar.dart';
import 'Components/custom_title.dart';
import 'Components/text_point.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IntroductionSection(),
            SizedBox(
              height: kDefaultPadding * 2,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextPoint(
                  title: 'INTRODUCE',
                  borderColor: kExtraAccentPrimaryColor,
                  children: [
                    TextSpan(
                      text: 'Our experts from top companies will help you ',
                    ),
                    TextSpan(
                      text: 'prepare for ',
                    ),
                    TextSpan(
                      text: 'Coding',
                      style: TextStyle(
                        color: kExtraAccentPrimaryColor,
                      ),
                    ),
                    TextSpan(
                      text: ', ',
                    ),
                    TextSpan(
                      text: 'System Design',
                      style: TextStyle(
                        color: kExtraAccentPrimaryColor,
                      ),
                    ),
                    TextSpan(
                      text: ' and ',
                    ),
                    TextSpan(
                      text: 'ML',
                      style: TextStyle(
                        color: kExtraAccentPrimaryColor,
                      ),
                    ),
                    TextSpan(
                      text: ' interviews',
                    ),
                  ],
                ),
                TextPoint(
                  title: 'ADVANCED',
                  borderColor: kExtraAccentSecondColor,
                  children: [
                    TextSpan(text: "You can also become an "),
                    TextSpan(
                      text: 'interviewer',
                      style: TextStyle(
                        color: kExtraAccentSecondColor,
                      ),
                    ),
                    TextSpan(text: ' and earn '),
                    TextSpan(
                      text: 'money',
                      style: TextStyle(
                        color: kExtraAccentSecondColor,
                      ),
                    ),
                    TextSpan(text: ' on preparing customers for interview'),
                  ],
                ),
                TextPoint(
                  title: 'FEATURES',
                  borderColor: kExtraAccentThirdColor,
                  children: [
                    TextSpan(text: 'We have vast range of top companies: '),
                    TextSpan(
                      text: 'LinkedIn',
                      style: TextStyle(color: kExtraAccentThirdColor),
                    ),
                    TextSpan(text: ', '),
                    TextSpan(
                      text: 'Google',
                      style: TextStyle(color: kExtraAccentThirdColor),
                    ),
                    TextSpan(text: ', '),
                    TextSpan(
                      text: 'Amazon',
                      style: TextStyle(
                        color: kExtraAccentThirdColor,
                      ),
                    ),
                    TextSpan(text: ', '),
                    TextSpan(
                      text: 'Facebook',
                      style: TextStyle(
                        color: kExtraAccentThirdColor,
                      ),
                    ),
                    TextSpan(text: ', '),
                    TextSpan(
                      text: 'Microsoft',
                      style: TextStyle(
                        color: kExtraAccentThirdColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            TextPoint(
              title: 'SCHEDULE',
              borderColor: kExtraAccentFourthColor,
              children: [
                TextSpan(
                    text:
                        'Service use the schedule of interview which helps interviewers and customers to find comfortable '),
                TextSpan(
                  text: 'time for both',
                  style: TextStyle(
                    color: kExtraAccentFourthColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
