import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ham_tools/pages/examination/examination_page.dart';
import 'package:ham_tools/pages/home/home_page.dart';
import 'package:ham_tools/pages/root/root_controller.dart';
import 'package:ham_tools/pages/user/user_page.dart';

class RootPage extends StatelessWidget {
  RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RootController>(builder: (controller) {
      return Scaffold(
        body: IndexedStack(
          index: controller.currentTab.value,
          children: const [
            HomePage(),
            ExaminationPage(),
            UserPage(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.currentTab.value,
          onTap: controller.setBar,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '首页',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: '考试',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '个人中心',
            ),
          ],
        ),
      );
    });
  }
}
