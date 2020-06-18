
import 'package:get/get.dart';

class WriteController extends GetController {

  static WriteController get to => Get.find();

  String _text = "";

  String get text => _text;

  set text(String value) {
    _text = value;
    update();
  }
}