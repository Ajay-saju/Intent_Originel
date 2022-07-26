import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:get/get.dart' as getx;
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:intent_original/Model/get_all_post/add_comment.dart';
// import 'package:intent_original/Model/get_all_post/post_comment.dart';
import 'package:intent_original/Model/get_all_post/post_likes_service.dart';
import 'package:intent_original/Model/get_all_post/post_model.dart';
import 'package:intent_original/Service/api_urls/api_url.dart';
import 'package:intent_original/Service/get_all_post_service/post_comment_service.dart';

class PostController extends GetxController {
  static IntentOrginalApis intentOrginalApis = IntentOrginalApis();
  final dio = Dio(BaseOptions(baseUrl: intentOrginalApis.baseUrlPost));
  var loading = true.obs;
  var getAllPosts = GetAllPost().obs;

  var postLikes = PostLIkes().obs;
  // var comments = PostComments().obs;

  //  getx.RxString postCreatedBy = "".obs;

 getx.RxList likes = [].obs;
 var   allComment = [].obs;

  @override
  void onInit() {
    getPost();

    super.onInit();
  }

  getPost() async {
    final response = await dio.get('posts/getAll');
    log(response.toString());
    GetAllPost getAllPost = GetAllPost.fromJson(response.data);

    for (var i = 0; i < getAllPost.posts!.length; i++) {
      likes.add(getAllPost.posts![i].likes);
    allComment.add(getAllPost.posts![i].comments);
      
  }
    print(allComment.toString());
    
    try {
      if (getAllPost != null) {
        getAllPosts(getAllPost);
        loading.value = false;
        //  await getLikes();
        // await getPostComments();

      } else {
        print("kkkkkkkkkk");
      }
    } catch (e) {
      if (e is DioError) {
        print(e.response!.data);
      }
      getx.Get.snackbar("title", e.toString());
      loading.value = true;
      print(e.toString());
    }
    update();
  }

  getLikes() async {
    print('Get Like work aaaaaaaaaaaaaayi');

    final response1 = await dio.get('posts/like');

    print('Like  kitty');
    log(response1.toString());
    log(response1.statusCode.toString());
    PostLIkes postLike = PostLIkes.fromJson(response1.data);
    print('Like model class il set ayi');

    try {
      if (postLike != null) {
        postLikes(postLike);
      } else {
        print("Error in like ");
      }
    } catch (e) {
      if (e is DioError) {
        print('Dio Errrrrror');
        //  print( e.response!.data);
      }
      getx.Get.snackbar("title", e.toString());
      print(e.toString());
    }
  }

  Future addComments(String userComment, String postId, String usersId) async {
    final addCommentApiCall = AddCommentApiCall();

    Map<String, dynamic> comment = {
      "comment": userComment,
      "postId": postId,
      "userId": usersId
    };

    try {
      final response = await addCommentApiCall.addAComment(comment);

      AddComment addComment = AddComment.fromJson(response.data);

      // log(addComment.data.toString());
      // return addComment;
      // print(addComment.message.toString());

      if (addComment.message == "success") {
        getPost();
         update();
        getx.Get.snackbar('', addComment.message.toString());
      }
    } catch (e) {
      getx.Get.snackbar('', e.toString());
    }
    update();
  }
}
