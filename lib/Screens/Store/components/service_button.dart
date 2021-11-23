import 'package:interview_practicing/Screens/Cart/cart_screen.dart';
import 'package:interview_practicing/constants.dart';
import 'package:flutter/material.dart';
import 'package:interview_practicing/models/Service.dart';

class ServiceButton extends StatefulWidget {
  final Service service;
  final String logoSrc, companyName;

  const ServiceButton({
    Key key,
    this.service,
    this.companyName,
    this.logoSrc,
  }) : super(key: key);

  @override
  State<ServiceButton> createState() => _ServiceButtonState();
}

class _ServiceButtonState extends State<ServiceButton> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
            _createRoute(widget.service, widget.logoSrc, widget.companyName));
      },
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

Route _createRoute(Service service, String logoSrc, String companyName) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => CartScreen(
      service: service,
      logoSrc: logoSrc,
      companyName: companyName,
    ),
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
