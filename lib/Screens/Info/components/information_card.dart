import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:interview_practicing/Screens/Info%20Element/info_element_screen.dart';
import 'package:interview_practicing/constants.dart';
import 'package:interview_practicing/models/Information.dart';

class InformationCard extends StatelessWidget {
  final int index;

  const InformationCard({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        color: servicesInfo[index].backgroundColor,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Ink.image(
                  image: AssetImage(servicesInfo[index].imageSrc),
                  fit: BoxFit.cover,
                  height: 500,
                  width: 350,
                  // colorFilter: ColorFilters.greyscale,
                  child: InkWell(
                    onTap: () {},
                  ),
                ),
                BackdropFilter(
                  filter: new ImageFilter.blur(sigmaX: 7.5, sigmaY: 7.5),
                  child: new Container(
                    decoration:
                        new BoxDecoration(color: Colors.white.withOpacity(0.0)),
                  ),
                ),
                Text(
                  servicesInfo[index].title,
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                servicesInfo[index].shortDescription,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white70,
                ),
              ),
            ),
            SizedBox(height: 10),
            ButtonBar(
              alignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton.extended(
                  backgroundColor: kExtraAccentFourthColor,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  onPressed: () {
                    Navigator.of(context)
                        .push(_createRoute(servicesInfo[index]));
                  },
                  label: Text(
                    'LEARN MORE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Route _createRoute(Information information) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        InformationElementScreen(
      information: information,
    ),
    transitionDuration: Duration(milliseconds: 400),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
