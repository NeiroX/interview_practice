import 'package:flutter/material.dart';
import 'custom_title.dart';
import 'package:interview_practicing/constants.dart';

class TextPoint extends StatelessWidget {
  final String title;
  final Color borderColor;
  final List<InlineSpan> children;


  const TextPoint({Key key, this.title, this.borderColor, this.children})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width * 0.32;

    return Container(
      width: c_width,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
      child: Column(
        children: [
          CustomTitle(
            title: title,
            borderColor: borderColor,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: kTextPointTextStyle,
                children: children
              )
            ),
          ),
        ],
      ),
    );
  }
}
