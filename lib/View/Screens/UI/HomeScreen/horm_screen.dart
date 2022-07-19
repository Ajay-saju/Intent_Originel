import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intent_original/Controller/authentication_controller.dart';
import 'package:intent_original/Model/login_response_model.dart';
import 'package:intent_original/View/Core/Colors/colors.dart';
import 'package:intent_original/View/Core/Size/size.dart';
import 'package:intent_original/View/Screens/Widgets/home_page_post_widget.dart';
import 'package:intent_original/View/Screens/Widgets/titlew_widget.dart';
import 'package:intent_original/View/Screens/Widgets/top_interviewers.dart';
import 'package:intent_original/main.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authenticationController = Get.put(AuthenticationController());

    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          h4,
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // print(authenticationController.loginResponseModel!.user!.name.toString());
                TitleTextWidget(
                    color: textColors,
                    text: preferences.getString('userName').toString(),
                    fontSize: 20),

                h1,
                const TitleTextWidget(
                    color: cBlack, text: "Top Interviewr's", fontSize: 10)
              ],
            ),
          ),
          h2,
          const TopInterviers(),
          h2,
          const HomePagePosts()
        ],
      )),
    );
  }
}
