import 'dart:ui';

import 'package:drawwithtext/draw/drawable.dart';

class Line extends Drawable {
  double xPoint1;

  double yPoint1;

  double xPoint2;

  double yPoint2;

  double width = 2.0;

  @override
  void draw(Canvas canvas, Size size) {
    canvas.drawLine(
        Offset(xPoint1, yPoint1),
        Offset(xPoint2, yPoint2),
        Paint()
          ..color = color
          ..strokeWidth = width);
  }

  @override
  Drawable getFromText(String text) {
    final split = text.split(",");
    xPoint1 = double.parse(split[0]);
    yPoint1 = double.parse(split[1]);
    xPoint2 = double.parse(split[2]);
    yPoint2 = double.parse(split[3]);
    if (split.length > 4) {
      width = double.parse(split[4]);
    }
    if (split.length > 5) {
      color = setColor(split[5]);
    }
    return this;
  }

  @override
  String toString() {
    return 'Line{xPoint1: $xPoint1, yPoint1: $yPoint1, xPoint2: $xPoint2, yPoint2: $yPoint2, width: $width}';
  }
}
