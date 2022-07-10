import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intent_original/View/Core/Colors/colors.dart';
import 'package:intent_original/View/Core/Size/size.dart';
import 'package:intent_original/View/Screens/UI/Interviewer%20Dashboard/interviewer_dashboard_screen.dart';
import 'package:intent_original/View/Screens/UI/Interviewer%20Reports%20Screen/interview_report_screen.dart';
import 'package:intent_original/View/Screens/UI/InterviewerRequestScreen/interviewer_requiest_screen.dart';
import 'package:intent_original/View/Screens/UI/Interviwer%20edit%20screen/interviewer_edit_screen.dart';
import 'package:intent_original/View/Screens/UI/UserNetworkScreen/user_network_screen.dart';
import 'package:intent_original/View/Screens/UI/UserPostScreen/posts_screen.dart';
import 'package:intent_original/View/Screens/Widgets/CircleProfilePicture.dart';
import 'package:intent_original/View/Screens/Widgets/profile_page_divider.dart';
import 'package:intent_original/View/Screens/Widgets/profile_page_list_tile.dart';
import 'package:intent_original/View/Screens/Widgets/titlew_widget.dart';
import 'package:sizer/sizer.dart';

class InterviwerProfileScreen extends StatelessWidget {
  const InterviwerProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          h2,
          Column(
            children: [
              ProfilePicture(
                ontap: () {
                  Get.to(const IterviwerEditScreen());
                },
                isvisible: false,
              ),
              h2,
              const TitleTextWidget(
                  color: textColors, text: 'Muneer Ahamed', fontSize: 20),
              h1,
              const TitleTextWidget(
                  color: cBlack,
                  text: 'Senior Flutter Developeer',
                  fontSize: 17),
            ],
          ),
          h2,
          Padding(
            padding: EdgeInsets.all(3.h),
            child: Column(
              children: [
                ProfilePageListTile(
                    profileTitle: 'Posts',
                    onTap: () {
                      Get.to(const UserPostScreen());
                    }),
                const ProfileDivider(),
                ProfilePageListTile(
                    profileTitle: 'Network',
                    onTap: () {
                      Get.to(const UserNetworkScreen());
                    }),
                const ProfileDivider(),
                ProfilePageListTile(
                    profileTitle: 'Request',
                    onTap: () {
                      Get.to(const InterviewerRequiestScreen());
                    }),
                const ProfileDivider(),
                ProfilePageListTile(
                    profileTitle: 'Dashboard',
                    onTap: () {
                      Get.to(const InterviewerDashboardScreen());
                    }),
                const ProfileDivider(),
                ProfilePageListTile(
                    profileTitle: 'Reports',
                    onTap: () {
                      Get.to(const InterviewReportScreen());
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
              ],
            ),
          )
        ],
      )),
    );
  }
}
