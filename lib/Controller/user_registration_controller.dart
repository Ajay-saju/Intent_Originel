import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:intent_original/Model/user_registration.dart';
import 'package:intent_original/Service/user_registration_service/user_registration_service.dart';
import 'package:intent_original/View/Core/Colors/colors.dart';
import 'package:intent_original/View/Screens/UI/LoginScreen/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserRegistrationController extends GetxController {
  Future<UserRegistration?> user(String name, String email, String phone,
      String password, String confirmPassword, bool interviewer) async {
    final userRegistrationApiCall = UserRegistrationApiCall();
    

    Map<String, dynamic> user = {
      "name": name,
      "email": email,
      "phone": phone,
      "password": password,
      "interviewer": interviewer,
    };

    // Map<String,dynamic>userInterviewer ={
    //     "name": name,
    //   "email": email,
    //   "phone": phone,
    //   "password": password,
    //   "interviewer": interviewer,
      

    // };

    try {
      final response = await userRegistrationApiCall.createUser(user);
      // log(response.data);

      log(response.data);
      log(response.statusMessage.toString());
      log(response.statusCode.toString());

      if (response.statusCode == 200) {
        UserRegistration userRegistration =
            userRegistrationFromJson(response.data);

        Get.snackbar('Success', 'User created successfully',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: green,
            colorText: white,
            borderRadius: 10,
            borderColor: red,
            borderWidth: 2,
            duration: const Duration(seconds: 2));
        Get.to(const LoginScreen());
        return userRegistration;
      }

      // if (response == null) {
      //   Get.snackbar('Error',
      //       'Something is missing',
      //       snackPosition: SnackPosition.BOTTOM,
      //       backgroundColor: red,
      //       colorText: white,
      //       borderRadius: 10,
      //       borderColor: red,
      //       borderWidth: 2,
      //       duration: const Duration(seconds: 3));
      // }

    } catch (e) {
      if (e is DioError) {
        print('catchhhhhhhhhhhhhhhhhhhhhhhh');

        throw "It is not good";
      }
      Get.snackbar('Oops!', "User already exists",
          backgroundColor: red,
          colorText: white,
          borderRadius: 10,
          borderColor: red,
          borderWidth: 2,
          duration: const Duration(seconds: 3));
    }
    return null;
  }
}
