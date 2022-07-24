import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:intent_original/Model/get_all_post/post_model.dart';
import 'package:intent_original/Service/api_urls/api_url.dart';


class PostController extends GetxController {
  static IntentOrginalApis intentOrginalApis = IntentOrginalApis();
  final dio = Dio(BaseOptions(baseUrl: intentOrginalApis.baseUrlPost));
  var loading = true.obs;
 var getAllPosts = GetAllPost().obs;
  
  @override
  void onInit() {
    getPost();
    super.onInit();
  }

  
  getPost() async {
    final response = await dio.get('posts/getAll');
    log(response.toString());
    GetAllPost getAllPost = GetAllPost.fromJson(response.data);
    print('Post is workingggggggggggggggg');
    print("++++++++++++++++++++++++++++");

    try{
      if(getAllPost != null){
        getAllPosts(getAllPost);
        loading.value=false;
      }else{
        print("kkkkkkkkkk");
      }
    }catch(e){
      Get.snackbar("title", e.toString());
      loading.value=true;
    }
    
   
  }
}
