import 'package:flutter/material.dart';

// Box Decorations

BoxDecoration fieldDecortaion = BoxDecoration(
    borderRadius: BorderRadius.circular(2),
    color: Colors.white.withOpacity(0.9));

BoxDecoration disabledFieldDecortaion = BoxDecoration(
    borderRadius: BorderRadius.circular(2),
    color: Colors.white.withOpacity(0.5));

// Field Variables

const double fieldHeight = 45;
const double smallFieldHeight = 35;
const double inputFieldBottomMargin = 0;
const double inputFieldSmallBottomMargin = 10;
const EdgeInsets fieldPadding = const EdgeInsets.symmetric(horizontal: 15);
const EdgeInsets largeFieldPadding =
    const EdgeInsets.symmetric(horizontal: 15, vertical: 15);

// Text Variables
const TextStyle buttonTitleTextStyle =
    const TextStyle(fontWeight: FontWeight.w700, color: Colors.white);
