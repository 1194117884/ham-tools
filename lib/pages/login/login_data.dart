import 'dart:math';

import 'package:ham_tools/pages/vika/vika_db.dart';
import 'package:ham_tools/pages/vika/vika_properties.dart';
import 'package:ham_tools/pojos/vika_data.dart';

import '../../pojos/user.dart';

class LoginData {

  /// register user
  Future<User> register({String? name}) async {
    name ??= 'cqcq_${Random.secure().nextInt(999999)}';

    final String datasheetId =
        VikaProperties().properties['vika.user.datasheetId'];

    Map<String, dynamic> body = {
      name: name,
    };
    VikaRecord record = await VikaData().addRecord(datasheetId, body);

    return User.fromJson(record.fields);
  }
}
