import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:intent_original/Controller/post_controller/post_controller.dart';
import 'package:intent_original/Model/get_all_post/post_model.dart';
import 'package:intent_original/View/Core/Colors/colors.dart';
import 'package:intent_original/View/Core/Size/size.dart';
import 'package:intent_original/View/Screens/Widgets/chat_list_tile.dart';
import 'package:intent_original/View/Screens/Widgets/home_page_post_widget.dart';
import 'package:intent_original/View/Screens/Widgets/titlew_widget.dart';
import 'package:intent_original/main.dart';
import 'package:sizer/sizer.dart';

class PostDetails extends StatelessWidget {
  final int index;
  const PostDetails({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(postController.allComment.length.toString());
    String userId = preferences.get("id").toString();
    String comment = "";
    String postId =
        postController.getAllPosts.value.posts![index].sId.toString();

    var date = DateTime.parse(
        postController.getAllPosts.value.posts![index].createdAt.toString());
    Duration time = DateTime.now().difference(date);
    int days = time.inDays;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(2.h),
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: SizedBox(
            height: double.maxFinite,
            width: double.infinity,
            child: Column(
              children: [
                h4,
                ListTile(
                    leading: CircleAvatar(
                      radius: 4.4.h,
                      child: Image(
                        fit: BoxFit.cover,
                        image: NetworkImage(postController.getAllPosts.value
                            .posts![index].createdBy!.profileImg
                            .toString()),
                      ),
                    ),
                    title: TitleTextWidget(
                        color: cBlack,
                        text: postController
                            .getAllPosts.value.posts![index].createdBy!.name
                            .toString(),
                        fontSize: 13),
                    subtitle: TitleTextWidget(
                        color: grey800!,
                        text: days < 0 ? "Today" : "$days days ago",
                        fontSize: 11)),
                h2,
                Text(postController.getAllPosts.value.posts![index].description
                    .toString()),
                h2,
                ClipRRect(
                    child: Image(
                        image: NetworkImage(
                  postController.getAllPosts.value.posts![index].postImg
                      .toString(),
                ))),
                h2,
                Row(
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.favorite_outlined,
                          color: amber,
                          size: 4.h,
                        ),
                        Obx(() => TitleTextWidget(
                            color: cBlack,
                            text: postController.likes[index].length.toString(),
                            fontSize: 12)),
                      ],
                    ),
                    w1,
                    SizedBox(
                      width: 2.w,
                    ),
                    const TitleTextWidget(
                        color: cBlack, text: 'Comments', fontSize: 14)
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(1.h),
                  child: TextFormField(
                    onChanged: (value) {
                      comment = value;
                    },
                    decoration: InputDecoration(
                        hintText: "Add Your Comment",
                        suffixIcon: Padding(
                          padding: EdgeInsets.all(1.2.h),
                          child: InkWell(
                            onTap: () => postController.addComments(
                                comment, postId, userId),
                            child: SvgPicture.asset(
                              'asset/Icons/duotone-send-2-svgrepo-com.svg',
                            ),
                          ),
                        )),
                  ),
                ),
                Expanded(
                  child: GetBuilder<PostController>(
                    
                    builder: (controller) {
                      return ListView.separated(

                          // physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: ((context, indexof) {
                            Comments commentData =
                                controller.allComment[index][indexof];
                            return ListTile(
                              leading: CircleAvatar(
                                radius: 2.2.h,
                                child: Image(
                                    image: NetworkImage(commentData
                                        .commentedBy!.profileImg
                                        .toString())),
                              ),
                              title: TitleTextWidget(
                                  color: cBlack,
                                  fontSize: 12,
                                  text:
                                      commentData.commentedBy!.name.toString()),
                              subtitle: TitleTextWidget(
                                  color: cBlack,
                                  text: commentData.comment.toString(),
                                  fontSize: 11),
                            );
                          }),
                          separatorBuilder: (context, index) => const Divider(),
                          itemCount: postController.allComment[index].length);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
