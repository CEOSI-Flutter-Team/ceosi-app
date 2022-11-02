import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../repositories/freedom_posts_repository.dart';

final postProvider = Provider<FreedomPostsRepository>(
  (ref) {
    return FreedomPostsRepository();
  },
);
