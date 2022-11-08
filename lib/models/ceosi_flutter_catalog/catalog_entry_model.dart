import 'dart:convert';

CatalogEntryModel catalogEntryFromJson(String str) =>
    CatalogEntryModel.fromJson(json.decode(str));

String catalogEntryToJson(CatalogEntryModel data) => json.encode(data.toJson());

class CatalogEntryModel {
  CatalogEntryModel({
    required this.entryData,
  });

  List<EntryDatum> entryData;

  factory CatalogEntryModel.fromJson(Map<String, dynamic> json) =>
      CatalogEntryModel(
        entryData: List<EntryDatum>.from(
            json['entry_data'].map((x) => EntryDatum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        'entry_data': List<dynamic>.from(entryData.map((x) => x.toJson())),
      };
}

class EntryDatum {
  EntryDatum(
      {required this.title,
      required this.category,
      required this.description,
      required this.isCode,
      required this.data,
      required this.previewImage});

  String title;
  String category;
  String description;
  bool isCode;
  String data;
  String previewImage;

  factory EntryDatum.fromJson(Map<String, dynamic> json) => EntryDatum(
        title: json['title'],
        category: json['category'],
        description: json['description'],
        isCode: json['is_code'],
        data: json['data'],
        previewImage: json['previewImage'],
      );

  Map<String, dynamic> toJson() => {
        'title': title,
        'category': category,
        'description': description,
        'is_code': isCode,
        'data': data,
        'previewImage': previewImage,
      };
}
