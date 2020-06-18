
import 'dart:ui';

import 'package:drawwithtext/draw/drawable.dart';

class Circle extends Drawable {
  double _x;

  double _y;

  double _radius;

  @override
  void draw(Canvas canvas, Size size) {
    canvas.drawCircle(Offset(_x, _y), _radius, Paint()..color = color);
  }

  @override
  Drawable getFromText(String text) {
    final split = text.split(",");
    _x = double.parse(split[0]);
    _y = double.parse(split[1]);
    _radius = double.parse(split[2]);
    if (split.length > 3) {
      color = setColor(split[3]);
    }
    return this;
  }

}