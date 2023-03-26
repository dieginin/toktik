import '/domain/entities/video_post.dart';

abstract class VideoPostsRepository {
  Future<List<VideoPost>> getFavoriteVideosByUser(String user);

  Future<List<VideoPost>> getTrendingVideosByPage(int page);
}
