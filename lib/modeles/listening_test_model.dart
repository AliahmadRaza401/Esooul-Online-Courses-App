// To parse this JSON data, do
//
//     final welcome = listeningTestModelFromJson(jsonString);

import 'dart:convert';

ListeningTestModel listeningTestModelFromJson(String str) =>
    ListeningTestModel.fromJson(json.decode(str));

String listeningTestModelToJson(ListeningTestModel data) =>
    json.encode(data.toJson());

class ListeningTestModel {
  ListeningTestModel({
    required this.status,
    required this.message,
    required this.data,
  });

  int status;
  String message;
  List<Data> data;

  factory ListeningTestModel.fromJson(Map<String, dynamic> json) =>
      ListeningTestModel(
        status: json["status"],
        message: json["message"],
        data: List<Data>.from(json["data"].map((x) => Data.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Data {
  Data({
    required this.id,
    required this.name,
    required this.audio,
    required this.about,
    required this.instruction,
    required this.type,
    required this.createdAt,
    required this.updatedAt,
    required this.questionanswers,
  });

  int id;
  String name;
  String audio;
  String about;
  String instruction;
  String type;
  DateTime createdAt;
  DateTime updatedAt;
  List<Questionanswer> questionanswers;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        name: json["name"],
        audio: json["audio"],
        about: json["about"],
        instruction: json["instruction"],
        type: json["type"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        questionanswers: List<Questionanswer>.from(
            json["questionanswers"].map((x) => Questionanswer.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "audio": audio,
        "about": about,
        "instruction": instruction,
        "type": type,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "questionanswers":
            List<dynamic>.from(questionanswers.map((x) => x.toJson())),
      };
}

class Questionanswer {
  Questionanswer({
    required this.id,
    required this.testId,
    required this.question,
    required this.answer,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  String testId;
  String question;
  String answer;
  DateTime createdAt;
  DateTime updatedAt;

  factory Questionanswer.fromJson(Map<String, dynamic> json) => Questionanswer(
        id: json["id"],
        testId: json["test_id"],
        question: json["question"],
        answer: json["answer"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "test_id": testId,
        "question": question,
        "answer": answer,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
