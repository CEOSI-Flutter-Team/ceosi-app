import 'package:ceosi_app/models/ceosi_flutter_catalog/user_contributions_model.dart';
import 'package:ceosi_app/repositories/ceosi_flutter_catalog/user_contributions_repository_interface.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userContributionsRepositoryProvider =
    Provider<UserContributionsRepository>(
        (ref) => UserContributionsRepository());

class UserContributionsRepository
    implements UserContributionsRepositoryInterface {
  @override
  Future<UserContributionsModel> getContributionsData() async {
    final data = await Future.value(
      UserContributionsModel(
        contributionData: [
          ContributionDatum(
            id: 'YVwMpSe3ATaMjgDa0kTe',
            contributions: [
              Contribution(
                category: 'Conventions',
                title: 'File Structure',
              ),
              Contribution(
                category: 'Widgets',
                title: 'Text Widget',
              ),
              Contribution(
                category: 'Widgets',
                title: 'Button Widget',
              )
            ],
            totalContribution: '3',
          ),
        ],
      ),
    );
    return Future.delayed(const Duration(seconds: 3), () => data);
  }
}
