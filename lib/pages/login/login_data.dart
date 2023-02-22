import 'package:get/get.dart';

class LoginData extends GetConnect {
  Future<Response<String>> getUser() => get('http://baidu.com');
}

class User {}
