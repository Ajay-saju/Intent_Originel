import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:intent_original/Model/user_registration.dart';
import 'package:intent_original/Service/user_registration_service/user_registration_service.dart';
import 'package:intent_original/View/Core/Colors/colors.dart';
import 'package:intent_original/View/Screens/UI/LoginScreen/login_screen.dart';

class UserRegistrationController extends GetxController {
  Future<UserRegistration?> user(String name, String email, String phone,
      String password, String confirmPassword, bool interviewer) async {
    final userRegistrationApiCall = UserRegistrationApiCall();

    Map<String, dynamic> user = {
      "name": name,
      "email": email,
      "phone": phone,
      "password": password,
      "confirmPassword": confirmPassword,
      "interviewer": interviewer
    };

    try {
      final response = await userRegistrationApiCall.createUser(user);
      if(response.statusCode == 200 || response.statusCode == 201){
        log(response.data);
        UserRegistration userRegistration = userRegistrationFromJson(response.data);
        Get.snackbar('Success', 'User created successfully',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: green,
            colorText: white,
            borderRadius: 10,
            borderColor: red,
            borderWidth: 2,
            duration: const Duration(seconds: 3));
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

    }
    catch (e) {
      if (e is DioError) {
                print('catchhhhhhhhhhhhhhhhhhhhhhhh');

      throw "It is not good";
      }
      throw "IT is notttt good";
    }
    return null;
 
  }
}
