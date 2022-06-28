import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intent_original/View/Core/Size/size.dart';
import 'package:sizer/sizer.dart';

class InterviewCompletedDownloadWidget extends StatelessWidget {
  final String text;
  final String svgPath;
  const InterviewCompletedDownloadWidget({
    Key? key, required this.text, required this.svgPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text( text,style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 13.sp)),),
      w1,
      SvgPicture.asset(svgPath,width: 5.h,
    height: 5.h,)
    ],);
  }
}