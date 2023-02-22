import 'package:get/get.dart';
import 'package:ham_tools/pages/question/question_controller.dart';

class QuestionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => QuestionController(),
      fenix: true,
    );
  }
}
