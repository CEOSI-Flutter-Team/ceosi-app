import 'dart:convert';

CodeModel codeFromJson(String str) => CodeModel.fromJson(json.decode(str));

String codeToJson(CodeModel data) => json.encode(data.toJson());

class CodeModel {
  CodeModel({
    required this.codeData,
  });

  List<CodeDatum> codeData;

  factory CodeModel.fromJson(Map<String, dynamic> json) => CodeModel(
        codeData: List<CodeDatum>.from(
            json['code_data'].map((x) => CodeDatum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        'code_data': List<dynamic>.from(codeData.map((x) => x.toJson())),
      };
}

class CodeDatum {
  CodeDatum({
    required this.title,
    required this.category,
    required this.description,
    required this.isCode,
    required this.data,
  });

  String title;
  String category;
  String description;
  bool isCode;
  String data;

  factory CodeDatum.fromJson(Map<String, dynamic> json) => CodeDatum(
        title: json['title'],
        category: json['category'],
        description: json['description'],
        isCode: json['is_code'],
        data: json['data'],
      );

  Map<String, dynamic> toJson() => {
        'title': title,
        'category': category,
        'description': description,
        'is_code': isCode,
        'data': data,
      };
}
