import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sonix/core/configs/constants/assets.dart';
import 'package:sonix/core/configs/constants/icons.dart';
import 'package:sonix/core/utils/responsive.dart';

class AvatarProfile extends StatelessWidget {
  final String url;
  final VoidCallback? onChangeAvatar;

  const AvatarProfile({super.key, required this.url, this.onChangeAvatar});

  @override
  Widget build(BuildContext context) {
    double avatarSize = Responsive.width(35, context);
    return GestureDetector(
      onTap: () => onChangeAvatar?.call(),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(70),
            child:
                url.contains('https') || url.contains('http')
                    ? Image.network(
                      url,
                      height: avatarSize,
                      width: avatarSize,
                      fit: BoxFit.cover,
                    )
                    : Image.asset(
                      avatar,
                      height: avatarSize,
                      width: avatarSize,
                      fit: BoxFit.cover,
                    ),
          ),
          Positioned(
            bottom: 5,
            right: 3,
            child: SvgPicture.asset(
              icEdit,
              fit: BoxFit.none,
              width: 26,
              height: 26,
              colorFilter: ColorFilter.mode(Colors.blue, BlendMode.srcIn),
            ),
          ),
        ],
      ),
    );
  }
}
