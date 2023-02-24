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
        body: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    '成为新火腿',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    onChanged: controller.setName,
                    controller: TextEditingController(
                      text: controller.userName,
                    ),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: '请输入您的昵称',
                    ),
                  ),
                ),
                TextButton(
                  onPressed: controller.nextRandom,
                  child: const Text(
                    '随机一下',
                  ),
                ),
                Container(
                  height: 50,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                    child: const Text('登录'),
                    onPressed: controller.login,
                  ),
                ),
              ],
            )),
      );
    });
  }
}
