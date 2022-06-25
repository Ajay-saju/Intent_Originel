import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class TitleTextBoldWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  const TitleTextBoldWidget({
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
      style: GoogleFonts.poppins(
          color: color, fontSize: fontSize.sp, fontWeight: FontWeight.bold),
    );
  }
}
