import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:intent_original/Controller/post_controller/post_controller.dart';
import 'package:intent_original/View/Core/Colors/colors.dart';
import 'package:intent_original/View/Core/Size/size.dart';
import 'package:intent_original/View/Screens/Widgets/titlew_widget.dart';
import 'package:sizer/sizer.dart';

class NewWidget extends StatelessWidget {
  final int? index;
  // final TitleTextWidget? widget;?
  const NewWidget({
    Key? key,
    // this.widget,
    required this.isHome,
    this.index,
  }) : super(key: key);
  final bool isHome;
  @override
  Widget build(BuildContext context) {
    final PostController postController = Get.find<PostController>();
    return ClipRRect(
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(2.h), bottomRight: Radius.circular(2.h)),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          height: 5.h,
          color: Colors.white.withOpacity(0.5),
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.all(.5.h),
            child: Row(
              children: [
                w1,
                const Icon(
                  Icons.favorite_border_sharp,
                  color: amber,
                ),
                SizedBox(
                  width: .5.w,
                ),
                Obx(() => TitleTextWidget(
                    color: cBlack,
                    text: postController
                        .getAllPosts.value.posts![index!].likes!.length
                        .toString(),
                    fontSize: 8)),
                w1,
                const Icon(
                  Icons.comment_rounded,
                  color: amber,
                ),
                SizedBox(
                  width: .5.w,
                ),
                TitleTextWidget(
                    color: cBlack,
                    text: postController
                        .getAllPosts.value.posts![index!].comments!.length
                        .toString(),
                    fontSize: 8),
                const Spacer(),
                if (isHome) const Icon(Icons.add),
                if (isHome)
                  const TitleTextWidget(
                      color: textColors, text: 'Follow', fontSize: 12),
                w1
              ],
            ),
          ),
        ),
      ),
    );
  }
}
