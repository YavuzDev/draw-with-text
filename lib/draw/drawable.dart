import 'package:flutter/material.dart';

import 'impl/empty.dart';

abstract class Drawable {

  Color color;

  Drawable({this.color = Colors.white});

  void draw(Canvas canvas, Size size);

  Drawable getFromText(String text);

  Drawable returnCorrect(String text, Drawable actual) {
    var drawable;
    try {
      drawable = actual.getFromText(text);
    } catch (_) {
      return Empty();
    }
    return drawable;
  }

  final Map<String, Color> colors = {
    "blue": Colors.blue,
    "black": Colors.black,
    "red": Colors.red,
    "green": Colors.green,
  };

  Color setColor(String text) {
    final color = colors[text.toLowerCase().trim()];
    if (color == null) {
      return Colors.white;
    }
    return color;
  }
}