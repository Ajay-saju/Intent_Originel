import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intent_original/View/Core/Colors/colors.dart';
import 'package:sizer/sizer.dart';

class ProfilePageListTile extends StatelessWidget {
  final String profileTitle;
  final Function()? onTap;

  const ProfilePageListTile({
    required this.profileTitle,
    Key? key, required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
    onTap: onTap,
      
      title: Text(
        profileTitle,
        style: GoogleFonts.spaceGrotesk(
            color: textColors, fontWeight: FontWeight.w700, fontSize: 18.sp),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios_rounded,
        color: textColors,
      ),
    );
  }
}