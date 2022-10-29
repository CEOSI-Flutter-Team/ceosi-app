import 'package:ceosi_app/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AnnouncementNotifier
    extends StateNotifier<AsyncValue<Map<String, dynamic>?>> {
  AnnouncementNotifier(
    this.ref, [
    AsyncValue<Map<String, dynamic>>? codeList,
  ]) : super(codeList ?? const AsyncValue.loading()) {
    _getAnnouncementList();
  }

  final Ref ref;

  void _getAnnouncementList() {
    final codeList = ref.watch(announcementListFutureProvider);
    state = codeList;
  }
}
