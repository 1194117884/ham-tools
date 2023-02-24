import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ham_tools/pages/login/login_controller.dart';
import 'package:ham_tools/routes/app_routers.dart';

class RootController extends GetxController {
  LoginController loginController = Get.find<LoginController>();

  /// current tab index
  var currentTab = 0.obs;

  void setBar(int index) {
    currentTab.value = index;

    if ((index == 1 || index == 2) && !loginController.loginCheck()) {
      Get.showSnackbar(const GetSnackBar(
        titleText: Text("登录"),
        messageText: Text("您还未登录，请先登录！"),
        icon: Icon(
          Icons.back_hand_outlined,
          color: Colors.red,
        ),
        backgroundColor: Colors.blue,
        duration: Duration(seconds: 2),
      ));

      Get.toNamed(AppRoutes.login);
    }

    update();
  }
}
