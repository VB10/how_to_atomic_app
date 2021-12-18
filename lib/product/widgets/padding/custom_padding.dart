import 'package:flutter/material.dart';

class CustomPadding extends EdgeInsets {
  CustomPadding() : super.all(10);

  const CustomPadding.normalHorizontal() : super.symmetric(horizontal: 16);
}
