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
    required this.id,
    required this.contributions,
    required this.totalContribution,
  });

  String id;
  List<Contribution> contributions;
  String totalContribution;

  factory ContributionDatum.fromJson(Map<String, dynamic> json) =>
      ContributionDatum(
        id: json['id'],
        contributions: List<Contribution>.from(
            json['contributions'].map((x) => Contribution.fromJson(x))),
        totalContribution: json['total_contribution'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'contributions':
            List<dynamic>.from(contributions.map((x) => x.toJson())),
        'total_contribution': totalContribution,
      };
}

class Contribution {
  Contribution({
    required this.category,
    required this.title,
  });

  String category;
  String title;

  factory Contribution.fromJson(Map<String, dynamic> json) => Contribution(
        category: json['category'],
        title: json['title'],
      );

  Map<String, dynamic> toJson() => {
        'category': category,
        'title': title,
      };
}
