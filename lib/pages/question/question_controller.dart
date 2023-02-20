import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuestionController extends GetxController {
  var modelSelectList = [true, false];

  void changeModel(int index) {
    for (int i = 0; i < modelSelectList.length; i++) {
      /// pressing current model
      if (modelSelectList[i] && index == i) {
        return;
      }
      modelSelectList[i] = false;
    }

    modelSelectList[index] = true;

    log('change question model');
    update();
  }

  static const COLLECT_ICONS = <Icon>[
    Icon(
      Icons.star_border,
    ),
    Icon(
      Icons.star,
      color: Colors.blue,
    ),
  ];

  Icon collectIcon = COLLECT_ICONS.first;

  void collect() {
    if (collectIcon == COLLECT_ICONS.first) {
      collectIcon = COLLECT_ICONS.last;
    } else {
      collectIcon = COLLECT_ICONS.first;
    }

    log('collect or discollect');
    update();
  }
}
