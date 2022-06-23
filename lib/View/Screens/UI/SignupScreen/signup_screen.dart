

import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:intent_original/View/Core/Colors/colors.dart';
import 'package:intent_original/View/Core/Size/size.dart';
import 'package:intent_original/View/Screens/UI/SignupScreen/LoginScreen/login_screen.dart';

import 'package:intent_original/View/Screens/Widgets/CircleProfilePicture.dart';
import 'package:intent_original/View/Screens/Widgets/custume_button.dart';
import 'package:intent_original/View/Screens/Widgets/inpu_text_form_field.dart';
import 'package:intent_original/View/Screens/Widgets/registerapp_bar.dart';
import 'package:sizer/sizer.dart';


class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children:[
             const LoginTitles(title: 'Register',subTitle: 'Create account by filling the form below .',),
             const ProfilePicture(),
             const TextformField(hintText: 'Name', svgPath: 'asset/Icons/user-svgrepo-com (1).svg', keyboardType: TextInputType.name,),
             h1,
             const TextformField(hintText: 'Enter email', svgPath: 'asset/Icons/email-svgrepo-com.svg', keyboardType: TextInputType.emailAddress,),
             h1,
             const TextformField(hintText: 'Enter phone number', svgPath: 'asset/Icons/phone-svgrepo-com.svg', keyboardType: TextInputType.phone),
             h1,
             const TextformField(hintText: 'Password', svgPath: 'asset/Icons/lock-password-svgrepo-com.svg', keyboardType: TextInputType.name),
             h1,
             TextformField(hintText: 'Confirm password', svgPath: 'asset/Icons/password-svgrepo-com.svg', keyboardType: TextInputType.name),
             h2,h1,
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:  [
              
              // CustomButton(user: 'Interviwer'),


              // CustomButton(user: 'Interviwer', height: 6.h, fontSize: 12.sp, primary: buttonColor, onPressed:)
              
              // CustomButton(user: 'Interviewee')
             ],)
          ],
        ),
      ),
     

      
    );
  }
}
