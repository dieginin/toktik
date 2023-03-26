import 'package:flutter/material.dart';

import '/config/helpers/human_format.dart';
import '/domain/entities/video_post.dart';

class _CustomIconButton extends StatelessWidget {
  const _CustomIconButton({
    required this.value,
    required this.iconData,
    iconColor,
  }) : color = iconColor ?? Colors.white;

  final Color color;
  final IconData iconData;
  final int value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            iconData,
            color: color,
            size: 30,
          ),
        ),
        Text(HumanFormat.humanReadbleNumber(value)),
      ],
    );
  }
}

class VideoButtons extends StatelessWidget {
  const VideoButtons({
    super.key,
    required this.video,
  });

  final VideoPost video;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconButton(
          value: video.likes,
          iconData: Icons.favorite,
          iconColor: Colors.red,
        ),
        _CustomIconButton(
          value: video.views,
          iconData: Icons.remove_red_eye_outlined,
        )
      ],
    );
  }
}
