import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:intent_original/Model/login_response_model.dart';
import 'package:intent_original/Service/Authentication%20service/authentication.dart';
import 'package:intent_original/View/Core/Colors/colors.dart';
import 'package:intent_original/View/Screens/UI/HomeScreen/horm_screen.dart';
import 'package:intent_original/main.dart';

class AuthenticationController extends GetxController {
  

  Future<LoginResponseModel?> login(String email, String password) async {
    final userAuthenticationApiCall = UserAuthenticationApiCall();

    Map<String, dynamic> login = {"email": email, "password": password};

    try {
      final response = await userAuthenticationApiCall.loginCheck(login);

      log(response.data);
      log(response.statusMessage.toString());

      final jsonFile = jsonDecode(response.data);
      // log(response.statusCode.toString());
      // final message = response.data;
      // print(jsonFile['message']);

      if (jsonFile['message'].toString() == "Invalid login details") {
        Get.snackbar('Error', 'Invalid login details',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: red,
            colorText: white,
            borderRadius: 10,
            borderColor: red,
            borderWidth: 2,
            duration: const Duration(seconds: 3));
      }
      if (jsonFile['message'].toString() == "User not registered") {
        Get.snackbar('Error', 'User not registered',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: red,
            colorText: white,
            borderRadius: 10,
            borderColor: red,
            borderWidth: 2,
            duration: const Duration(seconds: 3));
      }

      final  responseData = loginResponseModelFromJson(response.data);
      await preferences.setString('login', response.data.toString());
      print("---------------------------${responseData.user!.name}");

      if (response.statusCode == 200 &&
          jsonFile['message'].toString() == 'Login Successfull') {
        Get.snackbar('Success', 'Successfully Login',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: green,
            colorText: white,
            borderRadius: 10,
            borderColor: red,
            borderWidth: 2,
            duration: const Duration(seconds: 3));

        Get.to(() => const HomeScreen());

        LoginResponseModel loginResponseModel =
            LoginResponseModel.fromJson(response.data);

        await preferences.setString(
            'token', loginResponseModel.token.toString());
        await preferences.setString(
            'id', loginResponseModel.user!.id.toString());

        return loginResponseModel;
      } else {
        Get.snackbar('Error',
            'Email or Password is incorrect Please cheack and try again',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: red,
            colorText: white,
            borderRadius: 10,
            borderColor: red,
            borderWidth: 2,
            duration: const Duration(seconds: 3));
      }
    } catch (e) {
      if (e is DioError) {
        print('catchhhhhhhhhhhhhhhhhhhhhhhh');
      }
    }
    return null;
  }
}
