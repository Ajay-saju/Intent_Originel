import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intent_original/View/Core/Colors/colors.dart';
import 'package:sizer/sizer.dart';

class DashboardInformationCard extends StatelessWidget {
  final String firstTitle;
  final String secondTitle;
  const DashboardInformationCard({
    required this.firstTitle,
    Key? key, required this.secondTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 4.5.h,
          width: 13.h,
          decoration: BoxDecoration(
            
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(1.h),
                  topRight: Radius.circular(1.h)),
              color: Colors.grey[400]),
          child: Center(
            child: Text(firstTitle,
                style: GoogleFonts.spaceGrotesk(
                    textStyle: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500))),
          ),
        ),
         Container(
          height: 4.5.h,
          width: 13.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(1.h),
                  bottomRight: Radius.circular(1.h)),
              color:buttonColor),
          child: Center(
            child: Text(secondTitle,
                style: GoogleFonts.spaceGrotesk(
                    textStyle: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w700))),
          ),
        )
      ],
    );
  }
}