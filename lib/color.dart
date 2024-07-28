import 'dart:ffi';
import 'dart:io';
import 'dart:math';

import 'package:flutter/foundation.dart';

class ColorRal {
  int r;
  int g;
  int b;

  ColorRal(this.r, this.g, this.b);
}

class RalColor {
  String name;
  ColorRal color;

  RalColor(this.name, this.color);
}

double calculateDistance(ColorRal a, ColorRal b) {
  return sqrt(pow(a.r - b.r, 2) + pow(a.g - b.g, 2) + pow(a.b - b.b, 2));
}

String convertRGBtoRAL(ColorRal rgb) {
  List<RalColor> ralColors = [
    RalColor('RAL 1000', ColorRal(204, 204, 153)),
    RalColor('RAL 1001', ColorRal(210, 170, 109)),
    // Add more RAL colors here...
  ];

  double minDistance =
      calculateDistance(ColorRal(rgb.r, rgb.g, rgb.b), ralColors[0].color);
  String closestRal = ralColors[0].name;

  for (int i = 1; i < ralColors.length; i++) {
    double distance =
        calculateDistance(ColorRal(rgb.r, rgb.g, rgb.b), ralColors[i].color);
    if (distance < minDistance) {
      minDistance = distance;
      closestRal = ralColors[i].name;
    }
  }

  return closestRal;
}
