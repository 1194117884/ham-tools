import 'package:get/get.dart';
import 'package:ham_tools/pages/login/login_data.dart';

class LoginController extends GetxController {
  String text = "aaaa";

  void change() {
    LoginData().register().then((user) {
      text = user.name;

      update();
    });
  }
}
