import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF0A0A0A);
const kAccentPrimaryColor = Color(0xFFD30909);
const kExtraAccentPrimaryColor = Color(0xFFC42F0B);
const kAccentSecondColor = Color(0xFF9F9807);
const kExtraAccentSecondColor = Color(0xFF9BAF07);
const kAccentThirdColor = Color(0xFF071C9F);
const kExtraAccentThirdColor = Color(0xFF0C7CBB);
const kAccentFourthColor = Color(0xFF510892);
const kExtraAccentFourthColor = Color(0xFF5A0DCF);
const kTitleBackgroundColor = Color(0xFF1B1B1B);
const kButtonColor = Color(0xFFD5D5D5);
const kTitleColor = Color(0xFFFCFCFC);
const kMainTextColor = Color(0xFFDCDCDC);
const kSecondTextColor = Color(0xFFD1D1D1);

const kDefaultPadding = 20.0;

final kDefaultShadow = BoxShadow(
  offset: Offset(0, 50),
  blurRadius: 30,
  color: Colors.white.withOpacity(0.2),
);

final kDefaultCardShadow = BoxShadow(
  offset: Offset(0, 20),
  blurRadius: 50,
  color: Colors.white.withOpacity(0.1),
);

const kDefaultOutlineInputBorder = OutlineInputBorder(
  borderSide: BorderSide(
    color: Color(0xFF311b02),
  ),
);

const kDefaultInputDecorationTheme = InputDecorationTheme(
  border: kDefaultOutlineInputBorder,
  enabledBorder: kDefaultOutlineInputBorder,
  focusedBorder: kDefaultOutlineInputBorder,
);

const kTextPointTextStyle = TextStyle(
    color: kSecondTextColor,
    fontWeight: FontWeight.w200,
    fontSize: 20,
    height: 1.25);
