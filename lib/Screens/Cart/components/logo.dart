import 'package:flutter/material.dart';
import 'package:interview_practicing/constants.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(kDefaultPadding * 2),
      padding: EdgeInsets.symmetric(
          vertical: kDefaultPadding / 2, horizontal: kDefaultPadding),
      constraints: BoxConstraints(maxWidth: 1110, maxHeight: 250),
      decoration: BoxDecoration(
        color: Colors.black54,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -5),
            color: kAccentPrimaryColor.withOpacity(0.15),
            blurRadius: 20,
          ),
        ],
        border: Border.all(color: Colors.black54, width: 0.6),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'images/icons/red_brain.png',
            height: 150,
            width: 150,
          ),
          SizedBox(
            width: kDefaultPadding,
          ),
          Text(
            'Intrvw Prctc'.toUpperCase(),
            style: TextStyle(
              color: kTitleColor,
              fontWeight: FontWeight.w100,
              fontSize: 65,
            ),
          ),
        ],
      ),
    );
  }
}
