import 'package:get/get.dart';

class RootController extends GetxController {
  /// current tab index
  var currentTab = 0.obs;

  void setBar(int index) {
    currentTab.value = index;

    update();
  }
}
