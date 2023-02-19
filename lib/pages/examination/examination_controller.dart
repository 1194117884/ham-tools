import 'package:get/get.dart';
import 'package:ham_tools/routes/app_routers.dart';

class ExaminationController extends GetxController {
  void takeExam({required String tab, required int type}) {
    Get.toNamed(AppRoutes.question);
  }
}
