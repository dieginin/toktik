import 'package:flutter/material.dart';

import '/core/widgets/shared/video_buttons.dart';
import '/core/widgets/video/full_screen_player.dart';
import '/domain/entities/video_post.dart';

class VideoScrollableView extends StatelessWidget {
  const VideoScrollableView({
    super.key,
    required this.videos,
  });

  final List<VideoPost> videos;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (_, i) {
        final VideoPost videoPost = videos[i];

        return Stack(
          children: [
            SizedBox.expand(
              child: FullScreenPlayer(
                caption: videoPost.caption,
                videoUrl: videoPost.videoUrl,
              ),
            ),
            Positioned(
              bottom: 40,
              right: 20,
              child: VideoButtons(video: videoPost),
            ),
          ],
        );
      },
    );
  }
}
