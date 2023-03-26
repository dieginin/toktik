class VideoPost {
  VideoPost({
    required this.caption,
    required this.videoUrl,
    this.likes = 0,
    this.views = 0,
  });

  final String caption;
  final int likes;
  final String videoUrl;
  final int views;
}
