import 'package:flutter/material.dart';
import 'package:interview_practicing/constants.dart';
import 'package:interview_practicing/models/Company.dart';

import 'store_custom_divider.dart';
import 'service_button.dart';

class CompanyCard extends StatefulWidget {
  final int index;

  const CompanyCard({Key key, this.index}) : super(key: key);

  @override
  _CompanyCardState createState() => _CompanyCardState();
}

// ExpansionTile widget
class _CompanyCardState extends State<CompanyCard> {
  @override
  Widget build(BuildContext context) {
    bool isHover = false;
    Duration duration = Duration(milliseconds: 200);

    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding,
          vertical: kDefaultPadding / 2,
        ),
        constraints: BoxConstraints(maxWidth: 440),
        duration: duration,
        decoration: BoxDecoration(
          color: companies[widget.index].backgroundColor,
          boxShadow: [
            // kDefaultCardShadow,
            // if (isHover)
            BoxShadow(
              offset: Offset(0, 5),
              blurRadius: 20,
              color: Colors.white.withOpacity(0.17),
            ),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.black26,
                  child: Image.asset(
                    companies[widget.index].logoSrc,
                    height: 75,
                    width: 75,
                  ),
                ),
                SizedBox(
                  width: kDefaultPadding * 2,
                ),
                Flexible(
                  child: Text(
                    companies[widget.index].companyName,
                    softWrap: true,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                ),
              ],
            ),
            CustomDivider(),
            Text(
              'Services',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 25,
                fontWeight: FontWeight.w400,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                companies[widget.index].services.length,
                (index) => ServiceButton(
                  service: companies[widget.index].services[index],
                  companyName: companies[widget.index].companyName,
                    logoSrc: companies[widget.index].logoSrc,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
