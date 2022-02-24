import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

Color color = Color.fromARGB(255, 110, 198, 245);
Color primaryColor = const Color(0xff11284C);
Color secondaryColor = const Color(0xffF0C848);
Color profileColor = Color.fromARGB(235, 150, 210, 255);
Color backgroundColor = Color(0xffEAF5FD);
//Color.fromARGB(237, 234, 246, 255);

EdgeInsetsGeometry padding = const EdgeInsets.all(8);
EdgeInsetsGeometry leftPadding = const EdgeInsets.only(left: 8.0);
EdgeInsetsGeometry rightPadding = const EdgeInsets.only(right: 8.0);
EdgeInsetsGeometry topPadding = const EdgeInsets.only(top: 8.0);
EdgeInsetsGeometry bottomPadding = const EdgeInsets.only(bottom: 8.0);
// SizedBox heightSizedBox = const SizedBox(height: 33.0,);

BoxShadow elevation(
    {Color? colors,
    double? offsetX,
    double? offsetY,
    double? spreadRadius,
    double? blurRadius}) {
  return BoxShadow(
    color: colors ?? Color.fromARGB(255, 83, 83, 83).withOpacity(.3),
    spreadRadius: spreadRadius ?? 1,
    blurRadius: blurRadius ?? 10,
    offset: Offset(offsetX ?? 5, offsetY ?? 4),
  );
}

/// Darken a color by [percent] amount (100 = black)
// ........................................................
Color darken(Color c, [int percent = 10]) {
  assert(1 <= percent && percent <= 100);
  var f = 1 - percent / 100;
  return Color.fromARGB(c.alpha, (c.red * f).round(), (c.green * f).round(),
      (c.blue * f).round());
}

/// Lighten a color by [percent] amount (100 = white)
// ........................................................
Color lighten(Color c, [int percent = 10]) {
  assert(1 <= percent && percent <= 100);
  var p = percent / 100;
  return Color.fromARGB(
      c.alpha,
      c.red + ((255 - c.red) * p).round(),
      c.green + ((255 - c.green) * p).round(),
      c.blue + ((255 - c.blue) * p).round());
}
