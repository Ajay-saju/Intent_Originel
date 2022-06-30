import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intent_original/View/Core/Colors/colors.dart';
import 'package:intent_original/View/Core/Size/size.dart';
import 'package:intent_original/View/Screens/Widgets/report_posting_widget.dart';
import 'package:intent_original/View/Screens/Widgets/user_tab_app_bar.dart';
import 'package:sizer/sizer.dart';

class InterviewReportScreen extends StatelessWidget {
  const InterviewReportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 7.h),
        child: const UserTabAppBar(title: "Reports"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                padding: EdgeInsets.all(1.h),
                itemCount: 1,
                itemBuilder: (context, index) => ExpansionTile(
                      trailing: SvgPicture.asset(
                        'asset/Icons/contract-svgrepo-com.svg',
                        width: 4.5.h,
                        height: 4.5.h,
                      ),
                      leading: CircleAvatar(
                        backgroundImage: const NetworkImage(
                            'https://image.shutterstock.com/image-photo/successful-businessman-standing-on-light-260nw-1202416018.jpg'),
                        radius: 5.h,
                      ),
                      title: Text(
                        'Jamse Domanic',
                        style: GoogleFonts.spaceGrotesk(
                            textStyle: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: textColors)),
                      ),
                      children: [
                        Padding(
                          padding: EdgeInsets.all(1.5.h),
                          child: Column(
                            children: [
                              h1,
                              Row(
                                children: const [
                                  SpaceGroteskTitlewidget(
                                    title: 'Flutter Developer',
                                    color: Colors.black87,
                                  ),
                                  Spacer(),
                                  SpaceGroteskTitlewidget(
                                      title: "11/02/2022", color: cBlack)
                                ],
                              ),
                              h1,
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Get.bottomSheet(
                                          const ReportPostingWidget());
                                    },
                                    child: Text(
                                      'Write Report here',
                                      style: GoogleFonts.spaceGrotesk(
                                          textStyle: TextStyle(
                                              fontSize: 12.sp,
                                              color: buttonColor,
                                              fontWeight: FontWeight.w800)),
                                    ),
                                  ),
                                  const Spacer(),
                                  const SpaceGroteskTitlewidget(
                                      title: '11.00 am To 11.30 am',
                                      color: cBlack)
                                ],
                              ),
                              h2,
                              Text(
                                'Pending',
                                style: GoogleFonts.spaceGrotesk(
                                    textStyle: TextStyle(
                                        color: Colors.red,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w700)),
                              ),
                            ],
                          ),
                        )
                      ],
                    )),
          )
        ],
      ),
    );
  }
}



class SpaceGroteskTitlewidget extends StatelessWidget {
  final String title;
  final Color color;

  const SpaceGroteskTitlewidget({
    Key? key,
    required this.title,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.spaceGrotesk(
          textStyle: TextStyle(
              fontSize: 12.sp, fontWeight: FontWeight.w500, color: color)),
    );
  }
}
