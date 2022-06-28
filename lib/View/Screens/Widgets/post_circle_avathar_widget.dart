import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PostCircleAvatarWidget extends StatelessWidget {
  const PostCircleAvatarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 3.3.h,
      backgroundImage: const NetworkImage(
        'https://image.shutterstock.com/image-photo/successful-businessman-standing-on-light-260nw-1202416018.jpg',
      ),
    );
  }
}