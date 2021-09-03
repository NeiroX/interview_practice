import 'package:interview_practicing/constants.dart';
import 'package:flutter/material.dart';
import 'package:interview_practicing/models/Service.dart';

class ServiceButton extends StatefulWidget {
  final Service service;

  const ServiceButton({
    Key key,
    this.service,
  }) : super(key: key);

  @override
  State<ServiceButton> createState() => _ServiceButtonState();
}

class _ServiceButtonState extends State<ServiceButton> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: Container(
        constraints: BoxConstraints(maxWidth: 400),
        padding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding / 2, vertical: kDefaultPadding / 2),
        margin: EdgeInsets.symmetric(
            horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.black26,
          boxShadow: [
            if (isHover)
              BoxShadow(
                offset: Offset(0, -2),
                color: Colors.white.withOpacity(0.08),
                blurRadius: 10,
              ),
          ],
        ),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(right: kDefaultPadding / 2),
                  child: Text(
                    widget.service.title,
                    style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.w300,
                        fontSize: 16),
                  ),
                ),
                Container(
                  child: Text(
                    '(${widget.service.hours} hour/hours @ \$${widget.service.price})',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w100,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: kDefaultPadding / 4,
            ),
            Text(
              widget.service.description,
              style: TextStyle(
                color: Colors.white60,
                fontWeight: FontWeight.w200,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
