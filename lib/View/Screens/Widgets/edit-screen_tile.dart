import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intent_original/View/Core/Colors/colors.dart';
import 'package:sizer/sizer.dart';

class EditScreenTile extends StatelessWidget {
  final String title;

  const EditScreenTile({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 35.h,
          child: TextFormField(
              autovalidateMode: AutovalidateMode.always,
              cursorColor: cBlack,
              initialValue: title,
              style: GoogleFonts.spaceGrotesk(
                  color: textColors,
                  fontWeight: FontWeight.w700,
                  fontSize: 14.sp),
              keyboardAppearance: Brightness.dark,
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                contentPadding: EdgeInsets.only(right: 2.h),
                focusColor: buttonColor,
              )),
        ),
        const Spacer(),
        SvgPicture.asset(
          'asset/Icons/edit-svgrepo-com.svg',
          width: 2.5.h,
          height: 2.5.h,
          color: textColors,
        )
      ],
    );
  }
}
