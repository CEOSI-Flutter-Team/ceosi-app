import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../repositories/ceosi_flutter_catalog/category_repository.dart';

final categoryListFutureProvider = FutureProvider<Map<String, dynamic>?>(
  (ref) async {
    return ref.watch(categoryRepositoryProvider).getCategoryList();
  },
);

class CategoryListNotifier
    extends StateNotifier<AsyncValue<Map<String, dynamic>?>> {
  CategoryListNotifier(
    this.ref, [
    AsyncValue<Map<String, dynamic>>? categoryList,
  ]) : super(categoryList ?? const AsyncValue.loading()) {
    _getCategoryList();
  }

  final Ref ref;

  void _getCategoryList() {
    final categoryList = ref.watch(categoryListFutureProvider);
    state = categoryList;
  }
}

final categoryListStateNotifierProvider = StateNotifierProvider.autoDispose<
    CategoryListNotifier, AsyncValue<Map<String, dynamic>?>>(
  (ref) {
    return CategoryListNotifier(ref);
  },
);
