import 'package:drawwithtext/controllers/write_controller.dart';
import 'package:flutter/material.dart';

class WriteTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (PointerDownEvent event) async {
        if (event.buttons == 2) {
          final value = await showMenu(
            context: context,
            position: RelativeRect.fromLTRB(event.localPosition.dx, event.localPosition.dy, event.localPosition.dx, event.localPosition.dx),
            items: <PopupMenuItem<String>>[
              const PopupMenuItem<String>(child: Text('Rectangle'), value: 'Rectangle'),
              const PopupMenuItem<String>(child: Text('Circle'), value: 'Circle'),
              const PopupMenuItem<String>(child: Text('Line'), value: 'Line'),
            ],
          );
          switch (value) {
            case "Rectangle":
              WriteController.to.textEditingController.text += "\nrect(x, y, width, height)";
              break;
            case "Circle":
              WriteController.to.textEditingController.text += "\ncircle(x, y, radius)";
              break;
            case "Line":
              WriteController.to.textEditingController.text += "\line(x1, y1, x2, y2)";
              break;
          }
        }
      },
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: TextField(
            controller: WriteController.to.textEditingController,
            style: TextStyle(
              color: Colors.blueAccent,
            ),
            keyboardType: TextInputType.multiline,
            maxLines: null,
            expands: true,
            decoration: InputDecoration.collapsed(
              hintText: "Draw here (ex: ${"rect(x, y, width, height)"})",
            ),
          ),
        ),
      ),
    );
  }
}
