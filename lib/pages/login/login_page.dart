import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ham_tools/pages/login/login_controller.dart';

class LoginPage extends GetView<LoginController> {

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('登录'),
          centerTitle: true,
        ),
        body: Wrap(
          alignment: WrapAlignment.center,
          children: [
            Text(controller.text),
            IconButton(
              onPressed: controller.change,
              icon: const Icon(Icons.change_circle_outlined),
            ),
          ],
        ),
      );
    });
  }
}
