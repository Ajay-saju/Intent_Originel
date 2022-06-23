import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intent_original/View/Core/Colors/colors.dart';
import 'package:sizer/sizer.dart';

class TextformField extends StatelessWidget {
  final String hintText;
  final String svgPath;
  final TextInputType keyboardType;

  const TextformField(
      {Key? key,
      required this.hintText,
      required this.svgPath,
      required this.keyboardType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 2.5.h, top: 3.h),
          child: SvgPicture.asset(
            svgPath,
            matchTextDirection: true,
            width: 4.h,
            height: 4.h,
            color: grey800,
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 2.h, right: 3.h),
            child: TextFormField(
                keyboardAppearance: Brightness.dark,
                cursorColor: buttonColor,
                textInputAction: TextInputAction.next,
                keyboardType: keyboardType,
                decoration: InputDecoration(
                  // enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: buttonColor,width: 0.5.w)),
                  contentPadding: EdgeInsets.only(right: 2.h),
                  hintText: hintText,
                  focusColor: buttonColor,
                  hintStyle: TextStyle(fontSize: 10.sp),
                )),
          ),
        ),
      ],
    );
  }
}
