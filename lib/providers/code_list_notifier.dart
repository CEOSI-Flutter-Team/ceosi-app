import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../repositories/code_repository.dart';

final codeListFutureProvider = FutureProvider<Map<String, dynamic>?>(
  (ref) async {
    return ref.watch(codeRepositoryProvider).getCodeList();
  },
);

class CodeListNotifier
    extends StateNotifier<AsyncValue<Map<String, dynamic>?>> {
  CodeListNotifier(
    this.ref, [
    AsyncValue<Map<String, dynamic>>? codeList,
  ]) : super(codeList ?? const AsyncValue.loading()) {
    _getCodeList();
  }

  final Ref ref;

  void _getCodeList() {
    final codeList = ref.watch(codeListFutureProvider);
    state = codeList;
  }
}

final codeListStateNotifierProvider = StateNotifierProvider.autoDispose<
    CodeListNotifier, AsyncValue<Map<String, dynamic>?>>(
  (ref) {
    return CodeListNotifier(ref);
  },
);
