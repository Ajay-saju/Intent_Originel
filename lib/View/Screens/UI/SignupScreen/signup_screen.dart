import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:intent_original/Controller/authentication_controller.dart';

import 'package:intent_original/Controller/user_registration_controller.dart';
import 'package:intent_original/View/Core/Colors/colors.dart';
import 'package:intent_original/View/Core/Size/size.dart';
import 'package:intent_original/View/Form%20validation/form_validation.dart';
import 'package:intent_original/View/Screens/UI/LoginScreen/login_screen.dart';
import 'package:intent_original/View/Screens/Widgets/CircleProfilePicture.dart';
import 'package:intent_original/View/Screens/Widgets/custume_button.dart';
import 'package:intent_original/View/Screens/Widgets/inpu_text_form_field.dart';
import 'package:intent_original/View/Screens/Widgets/login_rich_text.dart';
import 'package:intent_original/View/Screens/Widgets/registerapp_bar.dart';
import 'package:sizer/sizer.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FormValidations formValidations = FormValidations();
    final userRegistrationController = Get.put(UserRegistrationController());

    String name = '';
    String email = '';
    String password = '';
    String phone = '';
    String confirmPassword = '';
    bool? user ;
    
    TextEditingController controller = TextEditingController();
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(1.h),
          child: Column(
            children: [
              const LoginTitles(
                title: 'Register',
                subTitle: 'Create account by filling the form below .',
              ),
              ProfilePicture(
                isvisible: false,
              ),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    TextformField(
                      hintText: 'Name',
                      svgPath: 'asset/Icons/user-svgrepo-com (1).svg',
                      keyboardType: TextInputType.name,
                      onChanged: (String value) {
                        name = value;
                      },
                      validator: (String? value) {
                        return formValidations.nameValidation(name);
                      },
                    ),
                    h1,
                    TextformField(
                      hintText: 'Enter email',
                      svgPath: 'asset/Icons/email-svgrepo-com.svg',
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (String value) {
                        email = value;
                      },
                      validator: (String? value) {
                        return formValidations.emailFormValidation(email);
                      },
                    ),
                    h1,
                    TextformField(
                      hintText: 'Enter phone number',
                      svgPath: 'asset/Icons/phone-svgrepo-com.svg',
                      keyboardType: TextInputType.phone,
                      onChanged: (String value) {
                        phone = value;
                      },
                      validator: (String? value) {
                        return formValidations.phoneNumberValidation(phone);
                      },
                    ),
                    h1,
                    TextformField(
                      hintText: 'Password',
                      controller: controller,
                      svgPath: 'asset/Icons/lock-password-svgrepo-com.svg',
                      keyboardType: TextInputType.name,
                      onChanged: (String value) {
                        password = value;
                      },
                      validator: (String? value) {
                        return formValidations.passwordValidation(password);
                      },
                    ),
                    h1,
                    TextformField(
                      hintText: 'Confirm password',
                      svgPath: 'asset/Icons/password-svgrepo-com.svg',
                      keyboardType: TextInputType.name,
                      onChanged: (String value) {
                        confirmPassword = value;
                      },
                      validator: (String? value) {
                        return formValidations.confirmPasswordValidation(
                            controller.text, value);
                      },
                    ),
                  ],
                ),
              ),
              h2,
              h1,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomButton(
                      title: 'Interviwer',
                      height: 6.h,
                      fontSize: 12.sp,
                      primary: buttonColor,
                      onPressed: () {
                        user = true;
                        print(user);
                      }),
                  CustomButton(
                      title: 'Interviewee',
                      height: 6.h,
                      fontSize: 12.sp,
                      primary: buttonColor,
                      onPressed: () {
                        user = false;
                        print(user);
                      })
                ],
              ),
              h2,
              CustomButton(
                  title: 'Create Account',
                  height: 8.h,
                  fontSize: 18.sp,
                  primary: Colors.blueGrey[200]!,
                  onPressed: () async {
                    if (formKey.currentState!.validate()) {
                      // print('success');

                      await userRegistrationController.user(name, email, phone,
                          password, confirmPassword, user!);
                    }
                  }),
              h2,
              RegisterRichText(
                normal: 'Do you already hava an account ?',
                button: 'LOGIN',
                ontap: () {
                  Get.to(const LoginScreen());
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
