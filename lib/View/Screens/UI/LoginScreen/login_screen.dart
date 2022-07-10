import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intent_original/Controller/authentication_controller.dart';
import 'package:intent_original/View/Core/Colors/colors.dart';
import 'package:intent_original/View/Core/Size/size.dart';
import 'package:intent_original/View/Form%20validation/form_validation.dart';
import 'package:intent_original/View/Screens/UI/BottumNavyBar/bottum_nav_bar_screen.dart';
import 'package:intent_original/View/Screens/UI/HomeScreen/horm_screen.dart';

import 'package:intent_original/View/Screens/UI/SignupScreen/signup_screen.dart';
import 'package:intent_original/View/Screens/Widgets/custume_button.dart';
import 'package:intent_original/View/Screens/Widgets/inpu_text_form_field.dart';
import 'package:intent_original/View/Screens/Widgets/login_rich_text.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authenticationController = Get.put(AuthenticationController());
    final formKey = GlobalKey<FormState>();
    String email = '';
    String password = '';
    FormValidations formValidations = FormValidations();

    return Scaffold(
        body: SafeArea(
            child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: [
                TextformField(
                  hintText: 'Email',
                  svgPath: 'asset/Icons/email-svgrepo-com.svg',
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (String value) {
                    email = value;
                  },
                  validator: (String? value) {
                    return formValidations.emailFormValidation(email);
                  },
                ),
                h4,
                TextformField(
                  hintText: 'Password',
                  svgPath: 'asset/Icons/lock-password-svgrepo-com.svg',
                  keyboardType: TextInputType.text,
                  onChanged: (String value) {
                    password = value;
                  },
                  validator: (String? value) {
                    return formValidations.passwordValidation(password);
                  },
                ),
                h4,
              ],
            ),
          ),
          CustomButton(
              title: 'Sign In',
              height: 5.h,
              fontSize: 14.sp,
              primary: buttonColor,
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  print('Success');

                  authenticationController.login(email, password);

                }
                // Get.to(const BottumNavBarScreen());
              }),
          h2,
          Text('OR',
              style: GoogleFonts.poppins(
                  textStyle:
                      TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold))),
          h2,
          CustomButton(
              title: 'Login with OTP',
              height: 5.h,
              fontSize: 14.sp,
              primary: buttonColor,
              onPressed: () {
                Get.to(const BottumNavBarScreen());
              }),
          h2,
          RegisterRichText(
              normal: 'Don\'t have account ?',
              button: 'Create now',
              ontap: () {
                Get.to(const SignUpScreen());
              })
        ],
      ),
    )));
  }
}
