import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../Core/Colors/colors.dart';

class RegisterRichText extends StatelessWidget {
  final String normal;
  final String button;
  final VoidCallback ontap;
  const RegisterRichText({
    required this.normal,
    required this.button,
    Key? key, required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: normal,
          style: GoogleFonts.outfit(
              textStyle: TextStyle(fontSize: 10.5.sp, color: cBlack)),
          children: [
            TextSpan(
              recognizer: TapGestureRecognizer()..onTap=ontap,
              // TapGestureRecognizer()..onTap=(){Get.to(const LoginScreen());},
                text: button,
                style: TextStyle(
                  fontSize: 11.sp,
                  fontWeight: FontWeight.bold,
                ))
          ]),
    );
  }
}
