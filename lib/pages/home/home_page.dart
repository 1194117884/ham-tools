import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ham_tools/pages/home/home_controller.dart';

/// home page
class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            controller.title,
          ),
          centerTitle: true,
          elevation: 0,
        ),
        body: const Center(
          child: Text('Home'),
        ),
      );
    });
  }
}
