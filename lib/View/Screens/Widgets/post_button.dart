import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intent_original/View/Core/Colors/colors.dart';
import 'package:sizer/sizer.dart';

class PostButton extends StatelessWidget {
  const PostButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        primary:buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius:
    BorderRadius.circular(.5.h),
        ),
        elevation: 15.0,
      ),
      child: Text( 
        'Post',
        style: GoogleFonts.poppins(
            textStyle: TextStyle(
      fontSize: 20.sp,
      color: cBlack,
      fontWeight: FontWeight.w600)),
      ),
    );
  }
}