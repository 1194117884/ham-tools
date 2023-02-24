import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ham_tools/cache/local_storage.dart';
import 'package:ham_tools/pages/login/login_data.dart';
import 'package:ham_tools/pojos/user.dart';
import 'package:ham_tools/routes/app_routers.dart';

class LoginController extends GetxController {
  final LocalCacheStorage cacheStorage = LocalCacheStorage.storeDefault();
  final String LOGIN_CACHE_KEY = "login-data";

  String userName = '';

  bool loginCheck() {
    String jsonString = cacheStorage.getItem(LOGIN_CACHE_KEY);
    return jsonString.isNotEmpty;
  }

  void login() {
    LoginData().register(name: userName).then((user) {
      if (user != User.blank) {
        /// reset username
        userName = '';

        cacheStorage.setItem(LOGIN_CACHE_KEY, jsonEncode(user)).then((value) {
          /// go home and can not going back
          Get.offNamedUntil(
            AppRoutes.root,
            (Route<dynamic> route) => route.isFirst,
          );

          ///
          GetSnackBar(
            titleText: const Text("登录"),
            messageText: Text("登录成功，欢迎:${user.name}！"),
            icon: const Icon(
              Icons.check,
              color: Colors.green,
            ),
            backgroundColor: Colors.blue,
            duration: const Duration(seconds: 2),
          );
        });
      } else {
        ///
        const GetSnackBar(
          titleText: Text("登录"),
          messageText: Text("登录失败，请稍后重试！"),
          icon: Icon(
            Icons.warning_amber,
            color: Colors.red,
          ),
          backgroundColor: Colors.blue,
          duration: Duration(seconds: 2),
        );
      }
    });
  }

  void setName(value) {
    userName = value;
  }

  void nextRandom() {
    userName = random();

    update();
  }

  String random() {
    return 'cqcq_${Random.secure().nextInt(999999)}';
  }
}
