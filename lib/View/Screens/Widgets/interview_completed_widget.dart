import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intent_original/View/Core/Size/size.dart';
import 'package:intent_original/View/Screens/Widgets/interview_completed_download_widget.dart';
import 'package:sizer/sizer.dart';

class InterviewCompletedWidget extends StatelessWidget {
  const InterviewCompletedWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 2.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                'asset/Icons/verified-svgrepo-com.svg',
                color: Colors.green,
                width: 5.h,
                height: 5.h,
              ),
              w1,
              Text(
                'Completed',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(fontSize: 14.sp)),
              )
            ],
          ),
          const Spacer(),
          Column(
            children: [
              const InterviewCompletedDownloadWidget(
                text: 'Report',
                svgPath: 'asset/Icons/file-svgrepo-com.svg',
              ),
              h1,
              const InterviewCompletedDownloadWidget(
                  text: 'Rating',
                  svgPath: 'asset/Icons/rating-svgrepo-com.svg')
            ],
          ),
        ],
      ),
    );
  }
}
