
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class WriteController extends GetController {

  static WriteController get to => Get.find();

  TextEditingController _textEditingController = TextEditingController();

  bool _rightClick = false;

  double _xClicked;

  double _yClicked;

  TextEditingController get textEditingController => _textEditingController;

  bool get rightClick => _rightClick;

  set rightClick(bool value) {
    _rightClick = value;
    update();
  }

  double get yClicked => _yClicked;

  set yClicked(double value) {
    _yClicked = value;
  }

  double get xClicked => _xClicked;

  set xClicked(double value) {
    _xClicked = value;
  }

  @override
  void onClose() {
    _textEditingController.dispose();
    super.onClose();
  }
}