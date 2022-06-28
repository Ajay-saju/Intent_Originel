import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intent_original/View/Core/Size/size.dart';
import 'package:sizer/sizer.dart';

class InterviewConfirmedRowWidget extends StatelessWidget {
  const InterviewConfirmedRowWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'asset/Icons/verified-svgrepo-com.svg',
          color: Colors.green,
          width: 5.h,
          height: 5.h,
        ),
        w1,
        Text(
          'Confirmed',
          style: GoogleFonts.poppins(
              textStyle: TextStyle(fontSize: 14.sp)),
        )
      ],
    );
  }
}