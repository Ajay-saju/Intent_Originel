import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intent_original/View/Core/Colors/colors.dart';
import 'package:intent_original/View/Core/Size/size.dart';
import 'package:sizer/sizer.dart';

class PostPageButton extends StatelessWidget {
  final String svgPath;
  final String text;
  const PostPageButton({
    Key? key,
    required this.svgPath,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.h),
      child: Row(
        children: [
          SvgPicture.asset(
            svgPath,
            matchTextDirection: true,
            width: 5.h,
            height: 5.h,
            color: cBlack,
          ),
          w1,
          Text(
            text,
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontSize: 18, color: grey800, fontWeight: FontWeight.w400)),
          ),
        ],
      ),
    );
  }
}