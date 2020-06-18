import 'package:drawwithtext/controllers/write_controller.dart';
import 'package:flutter/material.dart';

class WriteTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: TextField(
          onChanged: (value) {
            WriteController.to.text = value;
          },
          style: TextStyle(
            color: Colors.blueAccent,
          ),
          keyboardType: TextInputType.multiline,
          maxLines: null,
          expands: true,
          decoration: InputDecoration.collapsed(
            hintText: "Draw here",
          ),
        ),
      ),
    );
  }
}
