import 'package:ceosi_app/repositories/code_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'notifiers/code_list_notifier.dart';

//Provider for Code Repository
final codeRepositoryProvider =
    Provider<CodeRepository>((ref) => CodeRepository());

//Future Provider for Code List
final codeListFutureProvider = FutureProvider<Map<String, dynamic>?>(
  (ref) async {
    return ref.watch(codeRepositoryProvider).getCodeList();
  },
);

//State Notifier Provider for Code List
final codeListStateNotifierProvider = StateNotifierProvider.autoDispose<
    CodeListNotifier, AsyncValue<Map<String, dynamic>?>>(
  (ref) {
    return CodeListNotifier(ref);
  },
);
