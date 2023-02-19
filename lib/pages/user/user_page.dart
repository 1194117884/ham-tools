import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ham_tools/pages/user/user_controller.dart';

/// user page
class UserPage extends GetView<UserController> {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('UserProfiles'),
    );
  }
}
