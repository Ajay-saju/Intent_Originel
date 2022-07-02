import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intent_original/View/Core/Colors/colors.dart';
import 'package:intent_original/View/Core/Size/size.dart';
import 'package:intent_original/View/Screens/UI/UserInterviewsScreen/user_interviews_screns.dart';
import 'package:intent_original/View/Screens/UI/UserNetworkScreen/user_network_screen.dart';
import 'package:intent_original/View/Screens/UI/UserNotificationScreen/user_notification_screen.dart';
import 'package:intent_original/View/Screens/UI/UserPostScreen/posts_screen.dart';
import 'package:intent_original/View/Screens/Widgets/CircleProfilePicture.dart';
import 'package:intent_original/View/Screens/Widgets/profile_page_divider.dart';
import 'package:intent_original/View/Screens/Widgets/profile_page_list_tile.dart';
import 'package:intent_original/View/Screens/Widgets/titlew_widget.dart';
import 'package:sizer/sizer.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: ListView(
        children: [
          h2,
          Column(children:  [
               ProfilePicture(),
              h2,
           const TitleTextWidget(color: textColors, text: 'Ajay Saju', fontSize: 20),
           h1, const TitleTextWidget(color: cBlack, text: 'Flutter Developer', fontSize: 17),
           h2,
           Padding(
             padding:  EdgeInsets.all(3.h),
             child: Column(children: [
              ProfilePageListTile(profileTitle: "Post's", onTap: (){
                Get.to(const UserPostScreen());
              }),
              const ProfileDivider(),
              ProfilePageListTile(profileTitle: "Networks", onTap: (){
                Get.to(const UserNetworkScreen());
              }),
              const ProfileDivider(),
              ProfilePageListTile(profileTitle: "Interview", onTap: (){
                Get.to(const UserInterviewsScreen());
              }),
              const ProfileDivider(),
              ProfilePageListTile(profileTitle: "Notifications", onTap: (){
                Get.to(const UserNotificationScreen());
              }),
              const ProfileDivider(),
               ListTile(
                      title: Text(
                        'Log out',
                        style: GoogleFonts.spaceGrotesk(
                            color: textColors,
                            fontWeight: FontWeight.w700,
                            fontSize: 18.sp),
                      ),
                      trailing: const Icon(
                        Icons.logout_rounded,
                        color: textColors,
                      ),
                    ),
                    const ProfileDivider(),

             ],),
           )
          

          ],)
         
        ],
      )),
    );


  }
}