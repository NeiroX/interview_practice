import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:interview_practicing/Screens/common_components/app_bar.dart';
import 'package:interview_practicing/constants.dart';
import 'package:interview_practicing/models/Information.dart';

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
                    decoration: new BoxDecoration(color: Colors.white.withOpacity(0.0)),
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
                  onPressed: () {},
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

class ColorFilters {
  static final greyscale = ColorFilter.matrix(<double>[
    0.2126,
    0.7152,
    0.0722,
    0,
    0,
    0.2126,
    0.7152,
    0.0722,
    0,
    0,
    0.2126,
    0.7152,
    0.0722,
    0,
    0,
    0,
    0,
    0,
    1,
    0
  ]);
}
