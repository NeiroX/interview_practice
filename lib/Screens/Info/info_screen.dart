import 'package:flutter/material.dart';
import 'package:interview_practicing/Screens/common_components/app_bar.dart';
import 'package:interview_practicing/constants.dart';
import 'package:interview_practicing/models/Information.dart';

import 'components/information_card.dart';

class InfoScreen extends StatefulWidget {
  @override
  _InfoScreenState createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(),
            SizedBox(height: kDefaultPadding * 2),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: List.generate(
                  servicesInfo.length,
                  (index) => InformationCard(
                    index: index,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
