import 'package:ceosi_app/repositories/code_repository_interface.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final codeRepositoryProvider =
    Provider<CodeRepository>((ref) => CodeRepository());

class CodeRepository implements CodeRepositoryInterface {
  @override
  Future<Map<String, dynamic>?> getCodeList() async {
    final data = await Future.value({
      "code_list": [
        {
          "title": "Code Sample 1",
          "category": "Category 1",
        },
        {
          "title": "Code Sample 2",
          "category": "Category 4",
        },
        {
          "title": "Code Sample 3",
          "category": "Category 2",
        },
        {
          "title": "Code Sample 4",
          "category": "Category 8",
        },
        {
          "title": "Code Sample 5",
          "category": "Category 1",
        },
      ],
    });
    return Future.delayed(const Duration(seconds: 3), () => data);
  }
}
