import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intent_original/View/Core/Colors/colors.dart';
import 'package:intent_original/View/Core/Size/size.dart';
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
    return Scaffold(
        body: SafeArea(
            child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const TextformField(
              hintText: 'Email',
              svgPath: 'asset/Icons/email-svgrepo-com.svg',
              keyboardType: TextInputType.emailAddress),
          h4,
          const TextformField(
              hintText: 'Password',
              svgPath: 'asset/Icons/lock-password-svgrepo-com.svg',
              keyboardType: TextInputType.text),
          h4,
          CustomButton(
              title: 'Sign In',
              height: 5.h,
              fontSize: 14.sp,
              primary: buttonColor,
              onPressed: () {
                Get.to(const BottumNavBarScreen());
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
