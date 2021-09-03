import 'dart:ui';

import 'package:flutter/material.dart';

import '../../constants.dart';

class BackgroundImage extends StatelessWidget {

  final Widget child;
  final double maxHeight;

  const BackgroundImage({Key key, this.child, this.maxHeight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: 700,
        maxHeight: maxHeight,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.3),
        image: DecorationImage(
          colorFilter: ColorFilter.mode(
            kPrimaryColor.withOpacity(0.25),
            BlendMode.dstATop,
          ),
          fit: BoxFit.cover,
          image: AssetImage('images/backgrounds/neon_city_background.gif'),
        ),
      ),
      child: BackdropFilter(
        filter:
            ImageFilter.blur(sigmaX: 3, sigmaY: 3, tileMode: TileMode.clamp),
        child: child,
      ),
    );
  }
}
