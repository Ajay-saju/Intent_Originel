import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intent_original/View/Core/Colors/colors.dart';
import 'package:intent_original/View/Core/Size/size.dart';
import 'package:intent_original/View/Screens/Widgets/interview_completed_widget.dart';
import 'package:intent_original/View/Screens/Widgets/interview_confirmed_row_widget.dart';
import 'package:intent_original/View/Screens/Widgets/interview_page_timing_widget.dart';
import 'package:intent_original/View/Screens/Widgets/post_circle_avathar_widget.dart';
import 'package:intent_original/View/Screens/Widgets/post_title_widget.dart';
import 'package:sizer/sizer.dart';

class InterviewsMainContainerWidget extends StatelessWidget {
  const InterviewsMainContainerWidget({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    bool isCompleted = false;
    return Container(
      decoration: BoxDecoration(
          boxShadow: [textColorShadow()],
          color: buttonColor,
          borderRadius: BorderRadius.all(Radius.circular(1.h))),
      height: 50.h,
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
                    fontSize: 14.sp, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.h, right: 2.h, top: 1.h),
            child: Column(
              children: [
                const InterviewPageTimingWidget(
                  content: 'June 5, 2022',
                  iconPath: 'asset/Icons/calendar-date-svgrepo-com.svg',
                ),
                h1,
                const InterviewPageTimingWidget(
                    iconPath: 'asset/Icons/time-left-svgrepo-com.svg',
                    content: '4:00 pm to 5:pm (Ind)'),
                h1,
                const InterviewPageTimingWidget(
                    iconPath: 'asset/Icons/wallet-svgrepo-com.svg',
                    content: '₹ 500'),
                h1,
                const InterviewPageTimingWidget(
                    iconPath: 'asset/Icons/video-call-svgrepo-com.svg',
                    content: 'Interview link'),
              ],
            ),
          ),
          h2,
          
         if(isCompleted == true)
          const InterviewCompletedWidget(),
          if(isCompleted == false)
          const InterviewConfirmedRowWidget(),
        ],
      ),
    );
  }

  BoxShadow textColorShadow() {
    return  BoxShadow(
    color: Colors.blue[200]!,
      blurRadius: 2.0,
      spreadRadius: 0.0,
      offset: const Offset(2.0, 2.0), // shadow direction: bottom right
    );
  }
}

