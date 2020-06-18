
import 'package:drawwithtext/controllers/write_controller.dart';
import 'package:drawwithtext/draw/drawable.dart';
import 'package:drawwithtext/draw/drawable_manager.dart';
import 'package:flutter/material.dart';

class CanvasWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: Painter(),
    );
  }
}

class Painter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final List<Drawable> drawables = DrawableManager.getDrawables(WriteController.to.text);
    drawables.forEach((element) {
      element.draw(canvas, size);
    });
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
