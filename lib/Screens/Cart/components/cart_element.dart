import 'package:flutter/material.dart';
import 'package:interview_practicing/constants.dart';
import 'package:interview_practicing/models/Service.dart';

class CartElement extends StatefulWidget {
  final Service service;
  final String companyName, logoSrc;

  const CartElement({Key key, this.service, this.companyName, this.logoSrc})
      : super(key: key);

  @override
  _CartElementState createState() => _CartElementState();
}

class _CartElementState extends State<CartElement> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 1200),
      padding: EdgeInsets.symmetric(
          vertical: kDefaultPadding, horizontal: kDefaultPadding / 2),
      margin: EdgeInsets.symmetric(
          vertical: kDefaultPadding, horizontal: kDefaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.white10,
            child: Image.asset(
              widget.logoSrc,
              height: 75,
              width: 75,
            ),
          ),
          SizedBox(
            width: kDefaultPadding / 2,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.companyName + ' ' + widget.service.title,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: kDefaultPadding / 2,
              ),
              Text(
                widget.service.description,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white38,
                ),
              ),
            ],
          ),
          SizedBox(
            width: kDefaultPadding,
          ),
          Text(
            '${widget.service.hours} hour/hours',
            style: TextStyle(
              fontSize: 19,
              color: Colors.blueGrey,
            ),
          ),
          SizedBox(
            width: kDefaultPadding,
          ),
          Text(
            '${widget.service.price}\$',
            style: TextStyle(fontSize: 19, color: Colors.blueAccent),
          ),
        ],
      ),
    );
  }
}
