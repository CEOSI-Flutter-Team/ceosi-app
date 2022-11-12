import 'dart:convert';

CatalogEntryModel catalogEntryModelFromJson(String str) =>
    CatalogEntryModel.fromJson(json.decode(str));

String catalogEntryModelToJson(CatalogEntryModel data) =>
    json.encode(data.toJson());

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
  EntryDatum({
    required this.author,
    required this.category,
    required this.createdAt,
    required this.data,
    required this.description,
    required this.entryId,
    required this.isCode,
    required this.modifiedAt,
    required this.previewUrl,
    required this.title,
  });

  Author author;
  String category;
  String createdAt;
  String data;
  String description;
  String entryId;
  bool isCode;
  String modifiedAt;
  String previewUrl;
  String title;

  factory EntryDatum.fromJson(Map<String, dynamic> json) => EntryDatum(
        author: Author.fromJson(json['author']),
        category: json['category'],
        createdAt: json['created_at'],
        data: json['data'],
        description: json['description'],
        entryId: json['entry_id'],
        isCode: json['is_code'],
        modifiedAt: json['modified_at'],
        previewUrl: json['preview_url'],
        title: json['title'],
      );

  Map<String, dynamic> toJson() => {
        'author': author.toJson(),
        'category': category,
        'created_at': createdAt,
        'data': data,
        'description': description,
        'entry_id': entryId,
        'is_code': isCode,
        'modified_at': modifiedAt,
        'preview_url': previewUrl,
        'title': title,
      };
}

class Author {
  Author({
    required this.id,
    required this.name,
  });

  String id;
  String name;

  factory Author.fromJson(Map<String, dynamic> json) => Author(
        id: json['id'],
        name: json['name'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };
}
