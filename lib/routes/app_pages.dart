import 'package:get/get.dart';
import 'package:ham_tools/pages/examination/examination_page.dart';
import 'package:ham_tools/pages/home/home_page.dart';
import 'package:ham_tools/pages/login/login_page.dart';
import 'package:ham_tools/pages/question/question_page.dart';
import 'package:ham_tools/pages/root/root_bind.dart';
import 'package:ham_tools/pages/root/root_page.dart';
import 'package:ham_tools/pages/user/user_page.dart';
import 'package:ham_tools/routes/app_routers.dart';

import '../pages/question/question_bind.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.root,
      page: () => RootPage(),
      binding: RootBinding(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => const HomePage(),
    ),
    GetPage(
      name: AppRoutes.examination,
      page: () => const ExaminationPage(),
    ),
    GetPage(
      name: AppRoutes.user,
      page: () => const UserPage(),
    ),
    GetPage(
      name: AppRoutes.question,
      page: () => const QuestionPage(),
      binding: QuestionBinding(),
    ),
    GetPage(
      name: AppRoutes.login,
      page: () => LoginPage(),
    ),
  ];
}
