import 'package:flutter/material.dart';

import '/domain/entities/video_post.dart';

class DiscoverProvider extends ChangeNotifier {
  bool initialLoading = true;
  List<VideoPost> videos = [];

  Future loadNextPage() async {
    // TODO cargar videos

    notifyListeners();
  }
}
