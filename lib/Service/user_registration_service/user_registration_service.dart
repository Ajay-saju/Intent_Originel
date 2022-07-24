import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:intent_original/Service/api_urls/api_url.dart';

class UserRegistrationApiCall {
  static IntentOrginalApis intentOrginalApis = IntentOrginalApis();

  final dio = Dio(BaseOptions(
      baseUrl: intentOrginalApis.baseUrl, responseType: ResponseType.plain));

  Future<Response> createUser(Map<String, dynamic> user) async {
    try {
      Response response =
          await dio.post('registration', data: jsonEncode(user));
      return response;
    } on DioError catch (e) {
      print(e.message);
      rethrow;
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }

  // Future<Response> createInterviewer(Map<String, dynamic> interviewer) async {
  //   try {
  //     Response response =
  //         await dio.post('registration', data: jsonEncode(interviewer));
  //         return response;

  //   } catch (e) {
  //     print(e.toString());
  //     rethrow;
  //   }
  // }
}
