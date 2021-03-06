import 'package:flutter/material.dart';
import 'package:flutter_assignment/UI/ui.dart';
import 'package:flutter_svg/flutter_svg.dart';

final List<Color> colorList = [
  UIColors.lightSalmon,
  UIColors.lightGreen,
  UIColors.skyBlue,
  UIColors.mediumPurple,
  UIColors.plum,
  UIColors.sandyBrown,
];

Map contentMap = {
  "Bed Room": "4 Lights",
  "Living Room": "2 Lights",
  "Kitchen": "5 Lights",
  "Bathroom": "1 Light",
  "Outdoor": "5 Lights",
  "Balcony": "2 Lights",
};
Map imageMap = {
  "Bed Room": "assets/images/bed.svg",
  "Living Room": "assets/images/room.svg",
  "Kitchen": "assets/images/kitchen.svg",
  "Bathroom": "assets/images/bathtube.svg",
  "Outdoor": "assets/images/house.svg",
  "Balcony": "assets/images/balcony.svg",
};

Map contentScrollMap = {
  "Main Light": "assets/images/surface1.svg",
  "Desk Light": "assets/images/furniture-and-household.svg",
  "Bed Light": "assets/images/bed1.svg",
};
