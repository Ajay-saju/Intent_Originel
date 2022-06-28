import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intent_original/View/Core/Colors/colors.dart';
import 'package:intent_original/View/Core/Size/size.dart';
import 'package:sizer/sizer.dart';

class ProfilePageListTile extends StatelessWidget {
  final String profileTitle;
  final Function()? onTap;

  const ProfilePageListTile({
    required this.profileTitle,
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 6.h,
      child: ListTile(
        
        onTap: onTap,
        title: Text(
          profileTitle,
          style: GoogleFonts.spaceGrotesk(
              color: textColors, fontWeight: FontWeight.w700, fontSize: 14.sp),
        ),
        trailing:  Icon(
          Icons.arrow_forward_ios_rounded,size: 2.h,
          color: textColors,
        ),
      ),
    );
  }
}
