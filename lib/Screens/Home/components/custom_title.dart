import 'package:flutter/material.dart';
import 'package:interview_practicing/constants.dart';

class CustomTitle extends StatelessWidget {
  final Color borderColor;
  final String title;

  const CustomTitle({Key key, this.borderColor, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(26),
        color: kTitleBackgroundColor,
        boxShadow: [
          BoxShadow(
            color: Colors.white12.withOpacity(0.05),
            offset: Offset(0, -2),
            blurRadius: 30,
          ),
        ],
        border: Border.all(color: borderColor, width: 1.2),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: kMainTextColor,
          fontWeight: FontWeight.w300,
          fontSize: 40,
        ),
      ),
    );
  }
}
