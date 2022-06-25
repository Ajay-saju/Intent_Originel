import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intent_original/View/Core/Colors/colors.dart';
import 'package:intent_original/View/Core/Size/size.dart';
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
              const ProfilePicture(),
              h2,
           const TitleTextWidget(color: textColors, text: 'Ajay Saju', fontSize: 20),
           h1, const TitleTextWidget(color: cBlack, text: 'Flutter Developer', fontSize: 17),
           h2,
           Padding(
             padding:  EdgeInsets.all(3.h),
             child: Column(children: [
              ProfilePageListTile(profileTitle: "Post's", onTap: (){}),
              const ProfileDivider(),
              ProfilePageListTile(profileTitle: "Networks", onTap: (){}),
              const ProfileDivider(),
              ProfilePageListTile(profileTitle: "Interview", onTap: (){}),
              const ProfileDivider(),
              ProfilePageListTile(profileTitle: "Notifications", onTap: (){}),
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