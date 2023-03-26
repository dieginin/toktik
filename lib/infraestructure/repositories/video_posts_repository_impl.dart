import '/domain/datasources/video_posts_datasource.dart';
import '/domain/entities/video_post.dart';
import '/domain/repositories/video_posts_repository.dart';

class VideoPostsRepositoryImpl implements VideoPostsRepository {
  VideoPostsRepositoryImpl({required this.videosDataSource});

  final VideoPostsDatasource videosDataSource;

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String user) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) => videosDataSource.getTrendingVideosByPage(page);
}
