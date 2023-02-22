import 'package:get/get.dart';

class LoginController extends GetxController {
  String text = "aaaa";

  void change() {
    this.text = 'bbbb';

    update();
  }
}
