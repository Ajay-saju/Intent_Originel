
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intent_original/View/Core/Colors/colors.dart';
import 'package:sizer/sizer.dart';

class CustomElevetedButton extends StatelessWidget {
  final Color color;
  final String text;
  const CustomElevetedButton({
    Key? key, required this.text, required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        primary: color,
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(.5.h),
        ),
        elevation: 15.0,
      ),
      child: Text(
        text,
        style: GoogleFonts.outfit(
            textStyle: TextStyle(
                fontSize: 10.sp,
                color: cBlack,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}