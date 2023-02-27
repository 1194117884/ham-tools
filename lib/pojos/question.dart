import 'package:ham_tools/pojos/answer.dart';

class Question {
  String id;
  String id_number;
  String content;
  String version;
  List<Answer> options;
  String answer_tag;

  Question(this.id, this.id_number, this.content, this.version, this.options,
      this.answer_tag);

  static final blank = Question("", "", "", "", [], "");

  Question.fromJson(Map<String, dynamic> json)
      : id = json['id'] ?? "",
        id_number = json['id_number'] ?? "",
        content = json['content'] ?? "",
        version = json['version'] ?? "",
        options = json['options'] ?? [],
        answer_tag = json['answer_tag'] ?? "";

  Map<String, dynamic> toJson() => {
        'id': id,
        'id_number': id_number,
        'content': content,
        'version': version,
        'options': options,
        'answer_tag': answer_tag,
      };
}
