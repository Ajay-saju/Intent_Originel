import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intent_original/View/Core/Colors/colors.dart';
import 'package:sizer/sizer.dart';

class UserTabAppBar extends StatelessWidget {
  final String title;
  
  const UserTabAppBar({
    Key? key, required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 1.h),
      child: AppBar(
        centerTitle: true,
        titleSpacing: 3,
        elevation: 0,
        foregroundColor: cBlack,
        backgroundColor: Colors.transparent,
        title: Text(
          title,
          style: GoogleFonts.poppins(
              textStyle: TextStyle(fontSize: 20.sp, color: cBlack)),
        ),
      ),
    );
  }
}
