class User {
  final String id;
  final String name;
  final DateTime createAt;

  User( this.id, this.name, this.createAt);

  static final blank = User("", "", DateTime.now());

  User.fromJson(Map<String, dynamic> json)
      : id = json['id'] ?? "",
        name = json['name'] ?? "",
        createAt = json['createAt'] ?? 0;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'createAt': createAt,
      };
}
