import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class TitleTextWidget extends StatelessWidget {
  final String text;
  final int fontSize;
  final Color color;
  
  const TitleTextWidget({
    required this.color,
    required this.text,
    required this.fontSize,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      // domainName,
      overflow: TextOverflow.ellipsis,
      style: GoogleFonts.prompt(
          color: color, fontSize: fontSize.sp, fontWeight: FontWeight.w500),
    );
  }
}
