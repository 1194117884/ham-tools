import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ham_tools/pages/question/question_controller.dart';
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
              onPressed: Get.back,
            ),
          ],
        ),
        body: SlidingUpPanel(
          maxHeight: MediaQuery.of(context).size.height * 0.7,
          minHeight: MediaQuery.of(context).size.height * 0.1,
          borderRadius: BorderRadius.circular(24),
          backdropOpacity: 0.2,
          backdropEnabled: true,
          panelBuilder: (ScrollController sc) => Column(
            children: [
              const Icon(Icons.drag_handle),
              Padding(
                padding: EdgeInsets.fromLTRB(
                  10,
                  MediaQuery.of(context).size.height * 0.02,
                  10,
                  MediaQuery.of(context).size.height * 0.03,
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
              Container(
                padding: const EdgeInsets.all(20),
                child: Container(
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: <Widget>[
                      Text(
                        '驾驶机动车与行人之间发生交通事故造成人身伤亡、财产损失的，机动车一方没有过错，不承担赔偿责任。',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w300),
                        strutStyle: StrutStyle(leading: 1),
                      ),
                      Positioned(
                        top: 4,
                        left: 0,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(7, 4, 7, 4),
                          decoration: BoxDecoration(
                            color: Color(0XFF0676FC),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5),
                                bottomLeft: Radius.circular(0),
                                bottomRight: Radius.circular(5),
                                topRight: Radius.circular(5)),
                          ),
                          child: Text(
                            '单选',
                            style: TextStyle(fontSize: 11, color: Colors.white),
                          ),
                        ),
                      ),
                      Card(
                        shape: CircleBorder(),
                        elevation: 5.0,
                        child: Container(
                          alignment: Alignment.center,
                          width: 25,
                          height: 25,
                          child: Text(
                            'A',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Text(
                            '不正确不正确不正确不正确不正确不正确不正确不正确',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.yellow,
                child: Text('asdf'),
              ),
              Container(
                color: Colors.pink,
                child: Text('12314'),
              ),
            ],
          ),
        ),
      );
    });
  }
}
