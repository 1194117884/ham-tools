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
                onPressed: Get.back,
              );
            },
          ),
          title: ToggleButtons(
            direction: Axis.horizontal,
            onPressed: (int index) {
              controller.changeModel(index);
            },
            borderRadius: const BorderRadius.all(Radius.circular(3)),
            borderColor: Color.fromARGB(250, 51, 51, 51),
            selectedBorderColor: Color.fromARGB(250, 51, 51, 51),
            selectedColor: Colors.white,
            color: Colors.black,
            fillColor: Color.fromARGB(250, 51, 51, 51),
            constraints: const BoxConstraints(
              minHeight: 25.0,
              minWidth: 75.0,
            ),
            isSelected: controller.modelSelectList,
            children: const [
              Text('做题'),
              Text('背题'),
            ],
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.history),
              onPressed: Get.back,
            ),
          ],
        ),
        body: const Center(
          child: Text('asdfasdf'),
        ),
        bottomSheet: BottomAppBar(
          child: SizedBox(
            height: 55.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    IconButton(
                      onPressed: controller.collect,
                      icon: controller.collectIcon,
                    ),
                    const Text("收藏"),
                  ],
                ),
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: const [
                        Icon(Icons.check, color: Colors.blue),
                        Text('248')
                      ],
                    ),
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: const [
                        Icon(Icons.close, color: Colors.red),
                        Text('12')
                      ],
                    ),
                  ],
                ),
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: const [
                    Icon(Icons.view_module_outlined),
                    Text('365')
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
