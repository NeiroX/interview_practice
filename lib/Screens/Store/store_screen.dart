import 'package:flutter/material.dart';
import 'package:interview_practicing/Screens/common_components/background_image.dart';
import 'package:interview_practicing/constants.dart';
import 'package:interview_practicing/Screens/common_components/app_bar.dart';
import 'package:expansion_card/expansion_card.dart';
import 'package:interview_practicing/models/Company.dart';
import 'components/company_card.dart';

class StoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: BackgroundImage(
          maxHeight: 1800,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomAppBar(),
              SizedBox(height: kDefaultPadding),
              Wrap(
                spacing: kDefaultPadding,
                runSpacing: kDefaultPadding * 2,
                children: List.generate(
                  companies.length,
                  (index) => CompanyCard(index: index),
                ),
              ),
              SizedBox(height: kDefaultPadding * 10),
            ],
          ),
        ),
      ),
    );
  }
}
