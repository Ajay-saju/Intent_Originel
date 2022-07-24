import 'package:flutter/material.dart';
import 'package:intent_original/View/Screens/Widgets/home_page_post_widget.dart';
import 'package:sizer/sizer.dart';

class PostFromUserWidget extends StatelessWidget {
  final int index;
  const PostFromUserWidget({
    required this.index,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // child:BackdropFilter(filter: ImageFilter.blur(sigmaX: 5,sigmaY: 5)) ,
      height: 28.4.h,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(.5),
          borderRadius: BorderRadius.all(Radius.circular(2.h)),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(postController
                  .getAllPosts.value.posts![index].postImg
                  .toString()))),
    );
  }
}
