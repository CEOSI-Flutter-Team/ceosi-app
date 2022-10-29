import 'package:ceosi_app/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
