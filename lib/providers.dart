import 'package:ceosi_app/repositories/category_repository.dart';
import 'package:ceosi_app/repositories/code_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'providers/category_list_notifier.dart';
import 'providers/code_list_notifier.dart';

//Provider for Code Repository
final codeRepositoryProvider =
    Provider<CodeRepository>((ref) => CodeRepository());

//Provider for Category Repository
final categoryRepositoryProvider =
    Provider<CategoryRepository>((ref) => CategoryRepository());

//Future Provider for Code List
final codeListFutureProvider = FutureProvider<Map<String, dynamic>?>(
  (ref) async {
    return ref.watch(codeRepositoryProvider).getCodeList();
  },
);

//Future Provider for Category List
final categoryListFutureProvider = FutureProvider<Map<String, dynamic>?>(
  (ref) async {
    return ref.watch(categoryRepositoryProvider).getCategoryList();
  },
);

//State Notifier Provider for Code List
final codeListStateNotifierProvider = StateNotifierProvider.autoDispose<
    CodeListNotifier, AsyncValue<Map<String, dynamic>?>>(
  (ref) {
    return CodeListNotifier(ref);
  },
);

//State Notifier Provider for Category List
final categoryListStateNotifierProvider = StateNotifierProvider.autoDispose<
    CategoryListNotifier, AsyncValue<Map<String, dynamic>?>>(
  (ref) {
    return CategoryListNotifier(ref);
  },
);
