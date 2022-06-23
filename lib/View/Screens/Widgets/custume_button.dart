import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intent_original/View/Core/Colors/colors.dart';
import 'package:sizer/sizer.dart';

class CustomButton extends StatelessWidget {
final  String user;
final double height;
final double fontSize;
final Color primary;
final Function onPressed;
 const CustomButton({
    required this.user,
    Key? key, required this.height, required this.fontSize, required this.primary, required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ElevatedButton(
        onPressed: () {
          onPressed;
        },
        style: ElevatedButton.styleFrom(
          primary: primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(.5.h),
          ),
          elevation: 15.0,
        ),
        child: Padding(
          padding: EdgeInsets.all(1.h),
          child: Text(
            user,
            style: GoogleFonts.outfit(
                textStyle: TextStyle(
                    fontSize: fontSize,
                    color: cBlack,
                    fontWeight: FontWeight.bold)),
          ),
        ),
      ),
    );
  }
}