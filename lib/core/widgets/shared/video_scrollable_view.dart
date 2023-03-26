import 'package:flutter/material.dart';

import '/core/widgets/shared/video_buttons.dart';
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
            // Video Player + Gradiante

            // Botones
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
