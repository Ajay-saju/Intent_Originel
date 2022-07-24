import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:intent_original/Model/get_all_post/post_model.dart';
import 'package:intent_original/Service/api_urls/api_url.dart';

class GetAllPostApiCall {
  static IntentOrginalApis intentOrginalApis = IntentOrginalApis();
  final dio = Dio(BaseOptions(baseUrl: intentOrginalApis.baseUrlPost));

  // Future getAllPost() async {

  //   print("Working get all post");

  //   final response = await dio.get('posts/getAll');
  //   log(response.toString());
  //   GetAllPost getAllPost = GetAllPost.fromJson(response.data);
  //   return getAllPost;
    
  //     // var jsonString = response.data;

  //     // // print("Kityyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy");
  //     // return getAllPostFromJson(jsonString);
    
  //   // try {
  //   //   Response response = await dio.get('posts/getAll');

  //   //   if (response.statusCode == 200) {
  //   //     var jsonString = response.data;
  //   //     var getAllPost= getAllPostFromJson(jsonString);
  //   //   } else {
  //   //     print("Responce not fond");
  //   //   }
  //   // } on DioError catch (e) {
  //   //   print(e.message);
  //   //   rethrow;
  //   // } catch (e) {
  //   //   print(e.toString());
  //   //   rethrow;
  //   // }
  //   // return getAllPost;
  // }
}
