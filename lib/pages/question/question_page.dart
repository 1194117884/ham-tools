import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ham_tools/pages/question/question_controller.dart';
import 'package:ham_tools/routes/app_routers.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

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
            borderColor: const Color.fromARGB(250, 51, 51, 51),
            selectedBorderColor: const Color.fromARGB(250, 51, 51, 51),
            selectedColor: Colors.white,
            color: Colors.black,
            fillColor: const Color.fromARGB(250, 51, 51, 51),
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
              onPressed: () => {
                Get.toNamed(AppRoutes.login),
              },
            ),
          ],
        ),
        body: SlidingUpPanel(
          backdropOpacity: 0.3,
          backdropEnabled: true,
          borderRadius: BorderRadius.circular(24),
          maxHeight: MediaQuery.of(context).size.height * 0.7,
          minHeight: MediaQuery.of(context).size.height * 0.1,
          panelBuilder: (ScrollController sc) => Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(
                  10,
                  MediaQuery.of(context).size.height * 0.040,
                  10,
                  MediaQuery.of(context).size.height * 0.035,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: controller.collect,
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          IconButton(
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            constraints: const BoxConstraints(),
                            color: Colors.blue,
                            iconSize: 20,
                            onPressed: () => {},
                            icon: controller.collectIcon,
                          ),
                          const Text('收藏'),
                        ],
                      ),
                    ),
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: const [
                            Icon(
                              Icons.close,
                              color: Colors.red,
                              size: 18,
                            ),
                            Text('1112'),
                          ],
                        ),
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: const [
                            Icon(
                              Icons.check,
                              color: Colors.blue,
                              size: 18,
                            ),
                            Text('1248'),
                          ],
                        ),
                      ],
                    ),
                    GestureDetector(
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: const [
                          Icon(
                            Icons.view_module_outlined,
                            size: 20,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                            child: Text(
                              '1/365',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.6,
                child: GridView.builder(
                  controller: sc,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 6,
                  ),
                  itemCount: 1300,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      shadowColor: Colors.blue,
                      shape: const CircleBorder(),
                      child: Center(child: Text('$index')),
                    );
                  },
                ),
              ),
            ],
          ),
          body: PageView(
            scrollDirection: Axis.horizontal,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: '【LK0003】',
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.blue,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text:
                                '驾驶机动车与行人之间发生交通事故造成人身伤亡、财产损失的，机动车一方没有过错，不承担赔偿责任。',
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Card(
                          margin: const EdgeInsets.all(10.0),
                          shape: const CircleBorder(),
                          elevation: 5.0,
                          color: Colors.blue,
                          child: Container(
                            alignment: Alignment.center,
                            width: 32,
                            height: 32,
                            child: const Text(
                              'A',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Text(
                            '不正确不正确不正确不正确不正确不正确不正确不正确',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Card(
                          margin: const EdgeInsets.all(10.0),
                          shape: const CircleBorder(),
                          elevation: 5.0,
                          child: Container(
                            alignment: Alignment.center,
                            width: 30,
                            height: 30,
                            child: const Text(
                              'B',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Text(
                            '正确不正确',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Card(
                          margin: const EdgeInsets.all(10.0),
                          shape: const CircleBorder(),
                          elevation: 5.0,
                          child: Container(
                            alignment: Alignment.center,
                            width: 30,
                            height: 30,
                            child: const Text(
                              'C',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Text(
                            '不正确不正确不正确不正确不正确不正确不正确不正确',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Card(
                          margin: const EdgeInsets.all(10.0),
                          shape: const CircleBorder(),
                          elevation: 5.0,
                          child: Container(
                            alignment: Alignment.center,
                            width: 30,
                            height: 30,
                            child: const Text(
                              'D',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Text(
                            '正确不正确不正确不正确',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: '【LK0003】',
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.blue,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text:
                                '驾驶机动车与行人之间发生交通事故造成人身伤亡、财产损失的，机动车一方没有过错，不承担赔偿责任。',
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Card(
                          margin: const EdgeInsets.all(10.0),
                          shape: const CircleBorder(),
                          elevation: 5.0,
                          color: Colors.blue,
                          child: Container(
                            alignment: Alignment.center,
                            width: 32,
                            height: 32,
                            child: const Text(
                              'A',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Text(
                            '不正确不正确不正确不正确不正确不正确不正确不正确',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Card(
                          margin: const EdgeInsets.all(10.0),
                          shape: const CircleBorder(),
                          elevation: 5.0,
                          child: Container(
                            alignment: Alignment.center,
                            width: 30,
                            height: 30,
                            child: const Text(
                              'B',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Text(
                            '正确不正确',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Card(
                          margin: const EdgeInsets.all(10.0),
                          shape: const CircleBorder(),
                          elevation: 5.0,
                          child: Container(
                            alignment: Alignment.center,
                            width: 30,
                            height: 30,
                            child: const Text(
                              'C',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Text(
                            '不正确不正确不正确不正确不正确不正确不正确不正确',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Card(
                          margin: const EdgeInsets.all(10.0),
                          shape: const CircleBorder(),
                          elevation: 5.0,
                          child: Container(
                            alignment: Alignment.center,
                            width: 30,
                            height: 30,
                            child: const Text(
                              'D',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Text(
                            '正确不正确不正确不正确',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: '【LK0003】',
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.blue,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text:
                                '驾驶机动车与行人之间发生交通事故造成人身伤亡、财产损失的，机动车一方没有过错，不承担赔偿责任。',
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Card(
                          margin: const EdgeInsets.all(10.0),
                          shape: const CircleBorder(),
                          elevation: 5.0,
                          color: Colors.blue,
                          child: Container(
                            alignment: Alignment.center,
                            width: 32,
                            height: 32,
                            child: const Text(
                              'A',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Text(
                            '不正确不正确不正确不正确不正确不正确不正确不正确',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Card(
                          margin: const EdgeInsets.all(10.0),
                          shape: const CircleBorder(),
                          elevation: 5.0,
                          child: Container(
                            alignment: Alignment.center,
                            width: 30,
                            height: 30,
                            child: const Text(
                              'B',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Text(
                            '正确不正确',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Card(
                          margin: const EdgeInsets.all(10.0),
                          shape: const CircleBorder(),
                          elevation: 5.0,
                          child: Container(
                            alignment: Alignment.center,
                            width: 30,
                            height: 30,
                            child: const Text(
                              'C',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Text(
                            '不正确不正确不正确不正确不正确不正确不正确不正确',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Card(
                          margin: const EdgeInsets.all(10.0),
                          shape: const CircleBorder(),
                          elevation: 5.0,
                          child: Container(
                            alignment: Alignment.center,
                            width: 30,
                            height: 30,
                            child: const Text(
                              'D',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Text(
                            '正确不正确不正确不正确',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}
