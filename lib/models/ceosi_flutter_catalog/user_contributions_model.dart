import 'dart:convert';

UserContributionsModel userContributionsModelFromJson(String str) =>
    UserContributionsModel.fromJson(json.decode(str));

String userContributionsModelToJson(UserContributionsModel data) =>
    json.encode(data.toJson());

class UserContributionsModel {
  UserContributionsModel({
    required this.contributionData,
  });

  List<ContributionDatum> contributionData;

  factory UserContributionsModel.fromJson(Map<String, dynamic> json) =>
      UserContributionsModel(
        contributionData: List<ContributionDatum>.from(json['contribution_data']
            .map((x) => ContributionDatum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        'contribution_data':
            List<dynamic>.from(contributionData.map((x) => x.toJson())),
      };
}

class ContributionDatum {
  ContributionDatum({
    required this.profileId,
    required this.author,
    required this.contributions,
    required this.totalContribution,
  });

  String profileId;
  Author author;
  List<Contribution> contributions;
  String totalContribution;

  factory ContributionDatum.fromJson(Map<String, dynamic> json) =>
      ContributionDatum(
        profileId: json['profile_id'],
        author: Author.fromJson(json['author']),
        contributions: List<Contribution>.from(
            json['contributions'].map((x) => Contribution.fromJson(x))),
        totalContribution: json['total_contribution'],
      );

  Map<String, dynamic> toJson() => {
        'profile_id': profileId,
        'author': author.toJson(),
        'contributions':
            List<dynamic>.from(contributions.map((x) => x.toJson())),
        'total_contribution': totalContribution,
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

class Contribution {
  Contribution({
    required this.entryId,
    required this.category,
    required this.title,
  });

  String entryId;
  String category;
  String title;

  factory Contribution.fromJson(Map<String, dynamic> json) => Contribution(
        entryId: json['entry_id'],
        category: json['category'],
        title: json['title'],
      );

  Map<String, dynamic> toJson() => {
        'entry_id': entryId,
        'category': category,
        'title': title,
      };
}
