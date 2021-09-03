import 'package:flutter/material.dart';
import 'package:interview_practicing/constants.dart';

class CustomDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kDefaultPadding,
      child: Divider(
        thickness: 1.2,
        indent: 10,
        endIndent: 10,
        color: Colors.white,
      ),
    );
  }
}
