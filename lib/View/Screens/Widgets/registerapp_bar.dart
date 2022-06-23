import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intent_original/View/Core/Colors/colors.dart';
import 'package:sizer/sizer.dart';

class LoginTitles extends StatelessWidget {
  final String title;
  final String? subTitle;

 const LoginTitles({Key? key, required this.title,  this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 8.h,
        title: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.outfit(
                  textStyle: TextStyle(
                      color: cBlack,
                      letterSpacing: 2,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold)),
            ),
            Text(
              subTitle??'',
              style: GoogleFonts.outfit(
                  textStyle: TextStyle(
                color: cBlack,
                fontSize: 10.sp,
              )),
            )
          ],
        ),
      ),
    );
  }
}
