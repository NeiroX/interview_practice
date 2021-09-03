import 'package:flutter/material.dart';
import 'package:interview_practicing/constants.dart';

class MenuItem extends StatelessWidget {
  final String title;
  final Function press;

  const MenuItem({Key key, this.title, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          title.toUpperCase(),
          style: TextStyle(
            color: kButtonColor.withOpacity(0.65),
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
