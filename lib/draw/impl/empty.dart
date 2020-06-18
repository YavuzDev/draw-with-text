
import 'dart:ui';

import 'package:drawwithtext/draw/drawable.dart';

class Empty extends Drawable {
  @override
  void draw(Canvas canvas, Size size) {
  }

  @override
  Drawable getFromText(String text) {
    return this;
  }

}