import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intent_original/View/Core/Colors/colors.dart';
import 'package:intent_original/View/Core/Size/size.dart';
import 'package:intent_original/View/Screens/Widgets/custom_elevetedbutton.dart';
import 'package:intent_original/View/Screens/Widgets/custume_button.dart';
import 'package:intent_original/View/Screens/Widgets/interview_page_timing_widget.dart';
import 'package:intent_original/View/Screens/Widgets/post_circle_avathar_widget.dart';
import 'package:intent_original/View/Screens/Widgets/post_title_widget.dart';
import 'package:intent_original/View/Screens/Widgets/user_tab_app_bar.dart';
import 'package:sizer/sizer.dart';

class UserNotificationScreen extends StatelessWidget {
  const UserNotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 7.h),
        child: const UserTabAppBar(title: 'Notification'),
      ),
      body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.h),
                child: Column(
                  children: [
                    Container(
                      height: 45.h,
                      decoration: BoxDecoration(
                          boxShadow: [textColorShadow()],
                          color: buttonColor,
                          borderRadius: BorderRadius.all(Radius.circular(1.h))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(1.5.h),
                            child: Row(
                              children: [
                                const PostCircleAvatarWidget(),
                                w1,
                                const PostTitleWidget(title: 'Rishi'),
                                h1,
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 1.5.h),
                            child: LimitedBox(
                              child: Text(
                                'Your requist for mock interview is conformed by Rishi',
                                // overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.poppins(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 5.h, right: 2.h, top: 1.h),
                            child: Column(
                              children: [
                                const InterviewPageTimingWidget(
                                  content: 'June 5, 2022',
                                  iconPath:
                                      'asset/Icons/calendar-date-svgrepo-com.svg',
                                ),
                                h1,
                                const InterviewPageTimingWidget(
                                    iconPath:
                                        'asset/Icons/time-left-svgrepo-com.svg',
                                    content: '4:00 pm to 5:pm (Ind)'),
                                h1,
                                const InterviewPageTimingWidget(
                                    iconPath:
                                        'asset/Icons/wallet-svgrepo-com.svg',
                                    content: '₹ 500'),
                              ],
                            ),
                          ),
                          h1,
                          Center(
                            child: Text(
                              'Conform your Interview',
                              style: GoogleFonts.poppins(
                                  fontSize: 14.sp,
                                  color:
                                      const Color.fromARGB(255, 70, 31, 100)),
                            ),
                          ),
                          h2,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomButton(
                                fontSize: 12.sp,
                                title: 'Cancel',
                                height: 5.h,
                                primary: Colors.red,
                                onPressed: () {},
                              ),
                              w1,
                              CustomButton(
                                  title: 'Conform',
                                  height: 5.h,
                                  fontSize: 12.sp,
                                  primary: Colors.green,
                                  onPressed: () {})
                            ],
                          )
                        ],
                      ),
                    ),
                    h4,
                  ],
                ),
              )),
    );
  }

  BoxShadow textColorShadow() {
    return  const BoxShadow(
      color: Color.fromARGB(255, 168, 191, 209),
      blurRadius: 2.0,
      spreadRadius: 1.0,
      offset: Offset(2.0, 2.0), // shadow direction: bottom right
    );
  }
}
