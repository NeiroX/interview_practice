import 'package:flutter/material.dart';
import 'package:interview_practicing/Screens/Partnership/partnership_screen.dart';
import 'package:interview_practicing/constants.dart';
import '../Home/Components/menu_item.dart';
import '../Home/Components/default_button.dart';
import '../Store/store_screen.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      constraints: BoxConstraints(
        minWidth: 1110,
        maxHeight: 80,
      ),
      decoration: BoxDecoration(
        color: Colors.black87.withOpacity(0.9),
        borderRadius: BorderRadius.circular(46),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -2),
            blurRadius: 20,
            color: Colors.white38.withOpacity(0.05),
          ),
        ],
      ),
      child: Row(
        children: [
          SizedBox(width: 15),
          Image.asset(
            "images/icons/red_brain.png",
            width: 42,
            height: 42,
          ),
          SizedBox(
            width: 9,
          ),
          Flexible(
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text(
                'Intrvw Prctc'.toUpperCase(),
                style: TextStyle(
                  color: kTitleColor,
                  fontSize: 23,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Spacer(flex: 4),
          Flexible(
            flex: -1,
            child: MenuItem(
              title: 'Home',
              press: () {
                Navigator.pop(context);
              },
            ),
          ),
          Flexible(
            flex: -1,
            child: MenuItem(
              title: 'Partnership',
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PartnershipScreen()),
                );
              },
            ),
          ),
          Flexible(
            flex: -3,
            child: DefaultButton(
              title: 'Schedule Interview',
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StoreScreen()),
                );
              },
              color: kAccentPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
