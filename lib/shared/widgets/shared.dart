import 'package:flutter/material.dart';

Widget addHeight(double height) {
  return SizedBox(height: height);
}

Widget addWidth(double width) {
  return SizedBox(width: width);
}

double getOverallScreenHeight(BuildContext context) {
  double height = MediaQuery.of(context).size.height;

  return height;
}

double getScreenHeight(BuildContext context) {
  double height = MediaQuery.of(context).size.height;

  var padding = MediaQuery.of(context).padding;
  return height - padding.top - padding.bottom;
}

double getScreenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}
