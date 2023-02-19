import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ham_tools/routes/app_pages.dart';
import 'package:ham_tools/routes/app_routers.dart';
import 'package:ham_tools/themes/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'HamTools',
      initialRoute: AppRoutes.root,
      getPages: AppPages.list,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
    );
  }
}
