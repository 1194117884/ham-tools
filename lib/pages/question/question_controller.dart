import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ham_tools/pojos/question.dart';
import 'package:ham_tools/pojos/answer.dart';

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

  ///questions data from local files
  final List questionFiles = ["assets/questions/V20211022/a_class.txt"];

  Map<String, Question> readAllQuestionFromLocalFile(String filePath) {
    Map<String, Question> map = {};

    File file = File(filePath);
    file.readAsLines().then((lines) {
      for (var line in lines) {
        print(line);
        String version = filePath.substring(
            filePath.indexOf("V20"), filePath.indexOf("V20") + 9);
        String idNumber = "";
        String content = "";
        Answer optionA = Answer.blank;
        Answer optionB = Answer.blank;
        Answer optionC = Answer.blank;
        Answer optionD = Answer.blank;

        if (line.indexOf("[I]") == 0) {
          idNumber = line.substring(line.indexOf("[I]") + 3).toString();
        } else if (line.indexOf("[Q]") == 0) {
          content = line.substring(line.indexOf("[Q]") + 3).toString();
        } else if (line.indexOf("[A]") == 0) {
          optionA = Answer('${idNumber}_A', "A",
              line.substring(line.indexOf("[A]") + 3).toString(), true);
        } else if (line.indexOf("[B]") == 0) {
          optionB = Answer('${idNumber}_B', "B",
              line.substring(line.indexOf("[B]") + 3).toString(), false);
        } else if (line.indexOf("[C]") == 0) {
          optionC = Answer('${idNumber}_C', "C",
              line.substring(line.indexOf("[C]") + 3).toString(), false);
        } else if (line.indexOf("[D]") == 0) {
          optionD = Answer('${idNumber}_D', "D",
              line.substring(line.indexOf("[D]") + 3).toString(), false);
        } else {}

        List<Answer> options = [optionC, optionB, optionA, optionD];
        // List<Answer> options = [optionA, optionB, optionC, optionD];
        // options.shuffle();

        map.putIfAbsent(
          idNumber,
          () => Question(idNumber, idNumber, content, version, options, "A"),
        );
      }
      return map;
    });

    return map;
  }
}
