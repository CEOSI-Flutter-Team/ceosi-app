import 'package:ceosi_app/repositories/ceosi_flutter_catalog/category_repository_interface.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final categoryRepositoryProvider =
    Provider<CategoryRepository>((ref) => CategoryRepository());

class CategoryRepository implements CategoryRepositoryInterface {
  @override
  Future<Map<String, dynamic>?> getCategoryList() async {
    final data = await Future.value({
      'category_list': [
        {
          'title': 'Category 1',
          'items': '8',
        },
        {
          'title': 'Category 2',
          'items': '32',
        },
        {
          'title': 'Category 3',
          'items': '13',
        },
        {
          'title': 'Category 4',
          'items': '20',
        },
        {
          'title': 'Category 5',
          'items': '9',
        },
        {
          'title': 'Category 6',
          'items': '16',
        },
        {
          'title': 'Category 7',
          'items': '3',
        },
        {
          'title': 'Category 8',
          'items': '7',
        },
      ],
    });
    return Future.delayed(const Duration(seconds: 3), () => data);
  }
}
