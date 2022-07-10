import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:intent_original/Service/api_urls/api_url.dart';

class UserAuthenticationApiCall {
  static IntentOrginalApis intentOrginalApis = IntentOrginalApis();

  final dio = Dio(BaseOptions(
      baseUrl: intentOrginalApis.baseUrl, responseType: ResponseType.plain));

  Future<Response> loginCheck(Map<String, dynamic> login) async {
    try {
      var response = await dio.post('login', data: jsonEncode(login));
      return response;

    } on DioError catch (e){
     print(e.message);
      rethrow;
    }
    catch (e) {
      print(e.toString());
      rethrow;
      
    }
    
  }
}
