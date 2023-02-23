class VikaField {
  final String id;
  final String name;
  final String type;
  final bool editable;
  final bool isPrimary;
  final Map<String, dynamic> property;

  VikaField(this.id, this.name, this.type, this.editable, this.isPrimary,
      this.property);

  VikaField.fromJson(Map<String, dynamic> json)
      : id = json['id'] ?? "",
        name = json['name'] ?? "",
        type = json['type'] ?? "",
        editable = json['editable'] ?? false,
        isPrimary = json['isPrimary'] ?? false,
        property = json['property'] ?? [];

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'type': type,
        'editable': editable,
        'isPrimary': isPrimary,
        'property': property,
      };
}

class VikaRecord {
  final String recordId;
  final int createdAt;
  final int updatedAt;
  final Map<String, dynamic> fields;

  VikaRecord(this.recordId, this.createdAt, this.updatedAt, this.fields);

  static final blank = VikaRecord("", 0, 0, {});

  VikaRecord.fromJson(Map<String, dynamic> json)
      : recordId = json['recordId'] ?? "",
        createdAt = json['createdAt'] ?? 0,
        updatedAt = json['updatedAt'] ?? 0,
        fields = json['fields'] ?? {};

  Map<String, dynamic> toJson() => {
        'recordId': recordId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'fields': fields,
      };
}
