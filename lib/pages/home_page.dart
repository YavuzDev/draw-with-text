import 'package:drawwithtext/controllers/write_controller.dart';
import 'package:drawwithtext/widgets/canvas_widget.dart';
import 'package:drawwithtext/widgets/write_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<WriteController>(
        init: WriteController(),
        builder: (_) => Row(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width * 0.3,
              child: WriteTextWidget(),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width * 0.65,
              child: CanvasWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
