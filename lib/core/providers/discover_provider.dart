import 'package:flutter/material.dart';

import '/domain/entities/video_post.dart';
import '/infraestructure/models/local_video_model.dart';
import '/shared/data/local_video_posts.dart';

class DiscoverProvider extends ChangeNotifier {
  // TODO Repository, DataSource

  bool initialLoading = true;

  List<VideoPost> videos = [];

  Future loadNextPage() async {
    final List<VideoPost> newVideos = videoPosts.map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity()).toList();

    videos.addAll(newVideos);
    initialLoading = false;

    notifyListeners();
  }
}
