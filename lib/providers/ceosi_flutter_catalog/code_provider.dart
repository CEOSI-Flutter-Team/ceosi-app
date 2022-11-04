import 'package:ceosi_app/models/ceosi_flutter_catalog/code_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../repositories/ceosi_flutter_catalog/code_repository.dart';

final codeFutureProvider = FutureProvider<CodeModel?>(
  (ref) async {
    return ref.watch(codeRepositoryProvider).getCodeData();
  },
);

class CodeNotifier extends StateNotifier<AsyncValue<CodeModel?>> {
  CodeNotifier(
    this.ref, [
    AsyncValue<CodeModel>? codeData,
  ]) : super(codeData ?? const AsyncValue.loading()) {
    _getCodeData();
  }

  final Ref ref;

  void _getCodeData() {
    final codeData = ref.watch(codeFutureProvider);
    state = codeData;
  }
}

final codeStateNotifierProvider =
    StateNotifierProvider.autoDispose<CodeNotifier, AsyncValue<CodeModel?>>(
  (ref) {
    return CodeNotifier(ref);
  },
);
