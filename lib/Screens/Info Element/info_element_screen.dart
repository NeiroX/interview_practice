import 'package:flutter/material.dart';
import 'package:interview_practicing/constants.dart';
import 'package:interview_practicing/models/Information.dart';

class InformationElementScreen extends StatelessWidget {
  final Information information;

  const InformationElementScreen({Key key, this.information}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kExtraAccentFourthColor,
      ),
      body: SingleChildScrollView(
        child: Column(),
      ),
    );
  }
}
