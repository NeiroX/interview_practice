import 'package:flutter/material.dart';
import 'package:interview_practicing/constants.dart';

class DefaultButton extends StatelessWidget {
  final Function press;
  final String title;
  final Color color;

  const DefaultButton({Key key, this.press, this.title, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(26),
      child: FlatButton(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        color: color,
        onPressed: press,
        child: Text(
          title.toUpperCase(),
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
