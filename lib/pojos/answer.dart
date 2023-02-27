class Answer {
  String id;
  String tag;
  String content;
  bool isAnswer;

  Answer(this.id, this.tag, this.content, this.isAnswer);

  static final blank = Answer("", "", "", false);

  Answer.fromJson(Map<String, dynamic> json)
      : id = json['id'] ?? "",
        tag = json['tag'] ?? "",
        content = json['content'] ?? "",
        isAnswer = json['isAnswer'] ?? false;

  Map<String, dynamic> toJson() => {
        'id': id,
        'tag': tag,
        'content': content,
        'isAnswer': isAnswer,
      };
}
