import 'dart:convert';

import 'package:drawwithtext/draw/drawable.dart';
import 'package:drawwithtext/draw/impl/circle.dart';
import 'package:drawwithtext/draw/impl/rectangle.dart';

import 'impl/line.dart';

class DrawableManager {
  static List<Drawable> getDrawables(String text) {
    final List<Drawable> toDraw = [];
    LineSplitter().convert(text).forEach((element) {
      final Map<String, Drawable> drawables = {
        "rect": Rectangle(),
        "line": Line(),
        "circle": Circle()
      };
      drawables.forEach((key, value) {
        if (element.startsWith("$key(".toLowerCase()) &&
            element.endsWith(")")) {
          toDraw.add(value.returnCorrect(
              element.replaceFirst(")", "").replaceFirst("$key(", ""), value));
        }
      });
    });
    return toDraw;
  }
}
