import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intent_original/View/Core/Size/size.dart';
import 'package:sizer/sizer.dart';

class InterviewPageTimingWidget extends StatelessWidget {
  final String iconPath;
  final String content;
  const InterviewPageTimingWidget({
    Key? key,
    required this.iconPath,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          iconPath,
          width: 3.5.h,
          height: 3.5.h,
        ),
        w1,
        Text(
          content,
          style: GoogleFonts.inter(
              textStyle:
                  TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500)),
        ),
      ],
    );
  }
}
