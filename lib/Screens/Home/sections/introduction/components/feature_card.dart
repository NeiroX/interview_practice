import 'package:flutter/material.dart';
import 'package:interview_practicing/constants.dart';
import 'package:interview_practicing/models/Feature.dart';

class FeatureCard extends StatefulWidget {
  final int index;

  const FeatureCard({Key key, this.index}) : super(key: key);

  @override
  State<FeatureCard> createState() => _FeatureCardState();
}

class _FeatureCardState extends State<FeatureCard> {
  bool isHover = false;
  Duration duration = Duration(milliseconds: 200);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      hoverColor: Colors.transparent,
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
        padding: EdgeInsets.all(
          kDefaultPadding,
        ),
        height: 310,
        width: 310,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: features[widget.index].backgroundColor,
          boxShadow: [if (isHover) kDefaultCardShadow],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: duration,
              padding: EdgeInsets.all(kDefaultPadding * 1.5),
              height: 146,
              width: 146,
              decoration: BoxDecoration(
                color: Colors.white24,
                shape: BoxShape.circle,
                boxShadow: [
                  if (!isHover)
                    BoxShadow(
                      offset: Offset(0, 20),
                      blurRadius: 30,
                      color: Colors.white.withOpacity(0.1),
                    ),
                ],
              ),
              child: Image.asset(
                features[widget.index].imageSrc,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: kDefaultPadding / 1.2,
            ),
            Text(
              features[widget.index].title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: kDefaultPadding,
            ),
            Text(
              features[widget.index].description,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white70, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
