import '/domain/datasources/video_posts_datasource.dart';
import '/domain/entities/video_post.dart';
import '/domain/repositories/video_posts_repository.dart';

class VideoPostsRepository implements VideoPostRepository {
  VideoPostsRepository({required this.videosDataSource});

  final VideoPostDatasource videosDataSource;

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String user) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) => videosDataSource.getTrendingVideosByPage(page);
}
