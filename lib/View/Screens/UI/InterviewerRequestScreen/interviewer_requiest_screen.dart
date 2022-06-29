// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intent_original/Controller/date_controller.dart';
import 'package:intent_original/Controller/time_controller.dart';
import 'package:intent_original/View/Core/Colors/colors.dart';
import 'package:intent_original/View/Core/Size/size.dart';
import 'package:intent_original/View/Screens/Widgets/interview_page_timing_widget.dart';
import 'package:intent_original/View/Screens/Widgets/post_circle_avathar_widget.dart';
import 'package:intent_original/View/Screens/Widgets/post_title_widget.dart';
import 'package:intent_original/View/Screens/Widgets/select_date_widget.dart';
import 'package:intent_original/View/Screens/Widgets/select_time_widget.dart';
import 'package:intent_original/View/Screens/Widgets/user_tab_app_bar.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';
// import 'package:flutter_rounded_date_picker/rounded_picker.dart';

class InterviewerRequiestScreen extends StatelessWidget {
  const InterviewerRequiestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dateController = Get.put(DateController());
    final timeController = Get.put(FromTimeController());
    

    TextEditingController textDateController = TextEditingController();
    TextEditingController textFromTimeController = TextEditingController();
    TextEditingController textToTimeController = TextEditingController();

    return Scaffold(
      appBar: PreferredSize(
          child: const UserTabAppBar(title: "Requiest's"),
          preferredSize: Size(double.infinity, 7.h)),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 1,
                  itemBuilder: (context, index) => Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2.h),
                        child: Container(
                          height: 50.h,
                          decoration: BoxDecoration(
                              boxShadow: [textColorShadow()],
                              color: buttonColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(1.h))),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(1.5.h),
                                child: Row(
                                  children: [
                                    const PostCircleAvatarWidget(),
                                    w1,
                                    const PostTitleWidget(title: 'Rafi'),
                                    h1,
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: 1.5.h),
                                child: LimitedBox(
                                  child: RichText(
                                    text: TextSpan(
                                        text:
                                            'You have a moke interview requiest from',
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                fontSize: 13.sp,
                                                color: cBlack,
                                                fontWeight: FontWeight.w400)),
                                        children: [
                                          TextSpan(
                                            text: ' Rishi',
                                            style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                    fontSize: 15.sp,
                                                    color: cBlack,
                                                    fontWeight:
                                                        FontWeight.w500)),
                                          )
                                        ]),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 5.h, right: 2.h, top: 1.h),
                                child: Column(
                                  children: [
                                    const InterviewPageTimingWidget(
                                        iconPath:
                                            'asset/Icons/email-svgrepo-com (1).svg',
                                        content: 'rafimuideen@gmail.com'),
                                    h2,
                                    const InterviewPageTimingWidget(
                                        iconPath:
                                            'asset/Icons/phone-call-telephone-svgrepo-com.svg',
                                        content: '+91-7034019771'),
                                    h2,

                                    SelectDateWidget(
                                        dateController: dateController,
                                        textDateController: textDateController),
                                    h2,

                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          'asset/Icons/time-left-svgrepo-com.svg',
                                          width: 3.5.h,
                                          height: 3.5.h,
                                        ),
                                        w1,
                                        Row(
                                          children: [
                                            SelectTimeFromWidget(
                                              timeController: timeController,
                                              textTimeController:
                                                  textFromTimeController,
                                              hintText: 'From',
                                            ),
                                            w1,
                                            
                                            

                                          
                                          ],
                                        )
                                      ],
                                    ),

                                    //  Text()
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )))
        ],
      ),
    );
  }

  BoxShadow textColorShadow() {
    return BoxShadow(
      color: Colors.blue[200]!,
      blurRadius: 2.0,
      spreadRadius: 0.0,
      offset: const Offset(2.0, 2.0), // shadow direction: bottom right
    );
  }
}
