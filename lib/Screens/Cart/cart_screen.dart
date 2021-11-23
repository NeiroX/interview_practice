import 'package:flutter/material.dart';
import 'package:interview_practicing/Screens/Cart/components/logo.dart';
import 'package:interview_practicing/constants.dart';
import 'package:interview_practicing/models/Service.dart';

import 'components/cart_element.dart';

class CartScreen extends StatelessWidget {
  final Service service;
  final String companyName, logoSrc;

  const CartScreen({Key key, this.service, this.companyName, this.logoSrc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: Colors.red[800],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Logo()),
            SizedBox(
              height: kDefaultPadding * 3,
            ),
            CartElement(
              service: service,
              companyName: companyName,
              logoSrc: logoSrc,
            ),
            SizedBox(
              height: kDefaultPadding * 3,
            ),
            FloatingActionButton.extended(
              onPressed: () {},
              label: Text(
                'SCHEDULE',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              icon: Icon(Icons.schedule_outlined, color: Colors.white70),
              backgroundColor: kExtraAccentThirdColor,
            )
          ],
        ),
      ),
    );
  }
}
