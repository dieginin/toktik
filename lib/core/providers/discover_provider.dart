import 'package:flutter/material.dart';

import '/domain/entities/video_post.dart';
import '/domain/repositories/video_posts_repository.dart';

class DiscoverProvider extends ChangeNotifier {
  DiscoverProvider({required this.videosRepository});

  final VideoPostsRepository videosRepository;

  bool initialLoading = true;
  List<VideoPost> videos = [];

  Future loadNextPage() async {
    final List<VideoPost> newVideos = await videosRepository.getTrendingVideosByPage(1);

    videos.addAll(newVideos);
    initialLoading = false;

    notifyListeners();
  }
}
