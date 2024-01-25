import 'package:flutter/material.dart';

import 'package:chat_app/core/utils/app_color.dart';

class AvatarWidget extends StatelessWidget {
  final double? radiusRoundFirst;
  final double? radiusRoundSecond;
  final double? radiusRoundThird;
  final Color? colorRoundSecond;
  final Color? colorRoundThird;
  final Function()? onTap;
  final ImageProvider<Object>? backgroundImage;
  const AvatarWidget({
    Key? key,
    this.radiusRoundFirst,
    this.radiusRoundSecond,
    this.radiusRoundThird,
    this.colorRoundSecond,
    this.colorRoundThird,
    this.backgroundImage,
    this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CircleAvatar(
        radius: radiusRoundThird ?? 22,
        backgroundColor: colorRoundThird ?? kColorBrightBlue,
        child: CircleAvatar(
          radius: radiusRoundSecond ?? 20,
          backgroundColor: colorRoundSecond ?? kColorBlack,
          child: CircleAvatar(
            radius: radiusRoundSecond ?? 18,
            backgroundImage: backgroundImage,
          ),
        ),
      ),
    );
  }
}
