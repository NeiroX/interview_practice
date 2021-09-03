import 'package:flutter/material.dart';
import 'package:interview_practicing/Screens/common_components/background_image.dart';
import 'package:interview_practicing/constants.dart';
import 'package:interview_practicing/models/Feature.dart';

import '../../../common_components/app_bar.dart';
import 'components/feature_card.dart';
import 'components/text_space.dart';

class IntroductionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BackgroundImage(
      maxHeight: 900,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: kDefaultPadding),
          CustomAppBar(),
          SizedBox(height: kDefaultPadding * 4),
          TextSpace(),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              features.length,
              (index) => FeatureCard(index: index),
            ),
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
        ],
      ),
    );
  }
}
