class VikaBaseResponse {
  final bool success;
  final int code;
  final String message;
  final Map<String, dynamic> data;

  VikaBaseResponse(this.success, this.code, this.message, this.data);

  VikaBaseResponse.fromJson(Map<String, dynamic> json)
      : success = json['success'],
        code = json['code'],
        message = json['message'],
        data = json['data'] ?? {};

  Map<String, dynamic> toJson() => {
        'success': success,
        'code': code,
        'message': message,
        'data': data,
      };
}

class VikaFindRecordsPage {
  final int total;
  final int pageNum;
  final int pageSize;
  final List<dynamic> records;

  VikaFindRecordsPage(this.total, this.pageNum, this.pageSize, this.records);

  static final blank = VikaFindRecordsPage(0, 1, 10, []);

  VikaFindRecordsPage.fromJson(Map<String, dynamic> json)
      : total = json['total'],
        pageNum = json['pageNum'],
        pageSize = json['pageSize'],
        records = json['records'] ?? [];

  Map<String, dynamic> toJson() => {
        'total': total,
        'pageNum': pageNum,
        'pageSize': pageSize,
        'records': records,
      };
}

class VikaAddRecordReq {
  String fieldKey = "name";
  final List<VikaAddRecordReqField> records;

  VikaAddRecordReq(this.records, this.fieldKey);

  Map<String, dynamic> toJson() => {
        'records': records,
        'fieldKey': fieldKey,
      };
}

class VikaAddRecordReqField {
  Map<String, dynamic> fields;

  VikaAddRecordReqField(this.fields);

  Map<String, dynamic> toJson() => {
        'fields': fields,
      };
}

class VikaAddRecordRes {
  final List<dynamic> records;

  VikaAddRecordRes(this.records);

  VikaAddRecordRes.fromJson(Map<String, dynamic> json)
      : records = json['records'] ?? [];

  Map<String, dynamic> toJson() => {
        'records': records,
      };
}
