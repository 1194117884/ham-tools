class User {
  final String id;
  final String name;
  final DateTime createAt;
  final DateTime updateAt;

  User(this.id, this.name, this.createAt, this.updateAt);

  static final blank = User("", "", DateTime.now(), DateTime.now());

  User.fromJson(Map<String, dynamic> json)
      : id = json['id'] ?? "",
        name = json['name'] ?? "",
        createAt = DateTime.fromMillisecondsSinceEpoch(json['createAt'] ?? 0),
        updateAt = DateTime.fromMillisecondsSinceEpoch(json['updateAt'] ?? 0);

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'createAt': createAt,
        'updateAt': updateAt,
      };
}
