import 'package:ceosi_app/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
