import 'package:get/get.dart';
import 'package:ham_tools/pages/examination/examination_controller.dart';
import 'package:ham_tools/pages/home/home_controller.dart';
import 'package:ham_tools/pages/login/login_controller.dart';
import 'package:ham_tools/pages/question/question_controller.dart';
import 'package:ham_tools/pages/root/root_controller.dart';
import 'package:ham_tools/pages/user/user_controller.dart';

class RootBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => RootController(),
      fenix: true,
    );
    Get.lazyPut(
      () => HomeController(),
      fenix: true,
    );
    Get.lazyPut(
      () => ExaminationController(),
      fenix: true,
    );
    Get.lazyPut(
      () => UserController(),
      fenix: true,
    );
    Get.lazyPut(
      () => QuestionController(),
      fenix: true,
    );
    Get.lazyPut(
      () => LoginController(),
      fenix: true,
    );
  }
}
