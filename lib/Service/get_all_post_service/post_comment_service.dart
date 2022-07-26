import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:intent_original/Service/api_urls/api_url.dart';

class AddCommentApiCall{
  static IntentOrginalApis intentOrginalApis = IntentOrginalApis();
  final dio = Dio(BaseOptions(baseUrl: intentOrginalApis.baseUrlPost));

  Future<Response>addAComment(Map<String,dynamic>comment)async{
    try {
      Response response = await dio.post('posts/comment',data:jsonEncode(comment));
      print('Post work ayi');
      return response;
      
    } catch (e) {
      print(e.toString());
      rethrow;
      
    }

  }
}