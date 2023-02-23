import '../pojos/vika_data.dart';

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

class VikaPage {
  final int total;
  final int pageNum;
  final int pageSize;
  final List<dynamic> records;

  VikaPage(this.total, this.pageNum, this.pageSize, this.records);

  static final blank = VikaPage(0, 1, 10, []);

  VikaPage.fromJson(Map<String, dynamic> json)
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

class VikaGetFields {
  final List<VikaField> fields;

  VikaGetFields(this.fields);

  VikaGetFields.fromJson(Map<String, dynamic> json)
      : fields = json['fields'] ?? [];

  Map<String, dynamic> toJson() => {
        'fields': fields,
      };
}
