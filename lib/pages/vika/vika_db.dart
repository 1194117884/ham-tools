import 'package:ham_tools/pages/vika/vika_properties.dart';
import 'package:ham_tools/request/vika_connect.dart';

import '../../pojos/vika_data.dart';
import '../../request/vika_req_res.dart';

class VikaData extends VikaDataConnect {
  static final Map<String, dynamic> properties = VikaProperties().properties;

  VikaData() : super(properties["vika.authorization"]);

  /// add record
  Future<VikaRecord> addRecord(
      String datasheetId, Map<String, dynamic> fields) async {
    final String url = properties['vika.url.record.post'];

    Map<String, dynamic> result = await postRequest(
        url.replaceAll("{datasheetId}", datasheetId),
        VikaAddRecordReq(
          [
            VikaAddRecordReqField(fields),
          ],
          "name",
        ),
        query: {
          "fieldKey": "name",
        });

    VikaAddRecordRes res = VikaAddRecordRes.fromJson(result);
    if (res.records.isNotEmpty) {
      return VikaRecord.fromJson(res.records.first);
    }
    return VikaRecord.blank;
  }

  /// find record
  Future<VikaRecord> findRecord(String datasheetId, String recordId) async {
    final String url = properties['vika.url.record.get'];

    Map<String, dynamic> result =
        await getRequest(url.replaceAll("{datasheetId}", datasheetId), query: {
      "recordIds": recordId,
      "fieldKey": "name",
    });

    VikaFindRecordsPage page = VikaFindRecordsPage.fromJson(result);
    if (page.records.isNotEmpty) {
      return VikaRecord.fromJson(page.records.first);
    }
    return VikaRecord.blank;
  }
}
