import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:intent_original/Model/login_response_model.dart';
import 'package:intent_original/Service/Authentication%20service/authentication.dart';
import 'package:intent_original/View/Core/Colors/colors.dart';

class AuthenticationController extends GetxController {
 Future<LoginResponseModel?> login(String email, String password) async {
    Map<String, dynamic> login = {"email": email, "password": password};

    try {
      final response = await UserAuthenticationApiCall().loginCheck(login);
      if (response.statusCode == 200) {
        final LoginResponseModel loginResponseModel = response.data;
        Get.snackbar('Success', 'Successfully Login',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: red,
            colorText: white,
            borderRadius: 10,
            borderColor: red,
            borderWidth: 2,
            duration: const Duration(seconds: 3));

        return loginResponseModel;
      }
      if (response.data == null) {
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
      if(e is DioError){
        print('catchhhhhhhhhhhhhhhhhhhhhhhh');
      }
    }
    return null;
  }
}
