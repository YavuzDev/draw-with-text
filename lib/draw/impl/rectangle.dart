import 'dart:ui';

import 'package:drawwithtext/draw/drawable.dart';

class Rectangle extends Drawable {
  double _x;

  double _y;

  double _width;

  double _height;

  @override
  void draw(Canvas canvas, Size size) {
    canvas.drawRect(
        Rect.fromLTWH(_x, _y, _width, _height), Paint()..color = color);
  }

  @override
  Drawable getFromText(String text) {
    final split = text.split(",");
    _x = double.parse(split[0]);
    _y = double.parse(split[1]);
    _width = double.parse(split[2]);
    _height = double.parse(split[3]);
    if (split.length > 4) {
      color = setColor(split[4]);
    }
    return this;
  }
}
