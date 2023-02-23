import 'dart:convert';

import 'package:ham_tools/pages/vika/vika_properties.dart';
import 'package:ham_tools/request/vika_connect.dart';

import '../../pojos/vika_data.dart';

class VikaData extends VikaDataConnect {
  static final Map<String, dynamic> properties = VikaProperties().properties;

  VikaData() : super(properties["vika.authorization"]);

  /// add record
  Future<VikaRecord> addRecord(
      String datasheetId, Map<String, dynamic> data) async {
    final String url = properties['vika.url.record.post'];
    final String datasheetId = properties['vika.user.datasheetId'];

    return VikaRecord.fromJson(await postRequest(
        url.replaceAll("_datasheetId_", datasheetId), jsonEncode(data)));
  }
}
