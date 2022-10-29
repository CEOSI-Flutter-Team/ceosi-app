import 'package:ceosi_app/notifiers/announcement_notifier.dart';
import 'package:ceosi_app/repositories/ceosiApp_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final coesiAppRepositoryProvider =
    Provider<CeosiAppRepository>((ref) => CeosiAppRepository());

final announcementListFutureProvider = FutureProvider<Map<String, dynamic>?>(
  (ref) async {
    return ref.watch(coesiAppRepositoryProvider).getAnnouncementList();
  },
);

final announcementListStateNotifierProvider = StateNotifierProvider.autoDispose<
    AnnouncementNotifier, AsyncValue<Map<String, dynamic>?>>(
  (ref) {
    return AnnouncementNotifier(ref);
  },
);
