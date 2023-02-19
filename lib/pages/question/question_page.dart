import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ham_tools/pages/question/question_controller.dart';

class QuestionPage extends GetView<QuestionController> {
  const QuestionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuestionController>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Get.back();
                },
              );
            },
          ),
          title: Text('答题'),
        ),
        body: Center(
          child: Text('asdfasdf'),
        ),
      );
    });
  }
}
