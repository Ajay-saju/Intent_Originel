import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:intent_original/Service/api_urls/api_url.dart';
// import 'package:http/http.dart' as http;

class UserAuthenticationApiCall {
  static IntentOrginalApis intentOrginalApis = IntentOrginalApis();

  final dio = Dio(BaseOptions(
      baseUrl: intentOrginalApis.baseUrl, responseType: ResponseType.json));

  Future<Response> loginCheck(Map<String, dynamic> login) async {
    try {
      Response response = await dio.post('login', data: jsonEncode(login));
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

//   var url = 'http://10.0.2.2:9000/api/user/login';
//   Future<http.Response?> loginCheck(Map<String, dynamic> login) async {
//     try {
//       var response = await http.post(Uri.parse(url), body: login);
//       return response;
//     } catch (e) {
//       print(e.toString());
//     }
//     return null;
//   }
// }
}
