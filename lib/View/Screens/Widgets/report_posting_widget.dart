import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intent_original/View/Core/Colors/colors.dart';
import 'package:intent_original/View/Core/Size/size.dart';
import 'package:sizer/sizer.dart';

class ReportPostingWidget extends StatelessWidget {
  const ReportPostingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(2.h), topRight: Radius.circular(2.h))),
      // height: 120.h,
      // width: 30.w,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            h2,
            Text(
              'Write Review',
              style: GoogleFonts.spaceGrotesk(
                  textStyle: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: cBlack)),
            ),
            const Divider(
              thickness: 2,
              color: cBlack,
            ),
            h2,
            Expanded(
              child: TextFormField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                autovalidateMode: AutovalidateMode.always,
                cursorColor: cBlack,
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                        color: cBlack)),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 1.h, left: 1.h),
                    border:
                        const OutlineInputBorder(borderSide: BorderSide.none),
                    hintText: "Add your review here.......",
                    hintStyle: GoogleFonts.spaceGrotesk(
                      textStyle:
                          TextStyle(fontSize: 14.sp, color: Colors.black87),
                    )),
              ),
            ),
            Center(
                child: Padding(
              padding: EdgeInsets.only(bottom: 4.h),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(.5.h),
                    ),
                    elevation: 15.0,
                  ),
                  child: Text(
                    'Submit',
                    style: GoogleFonts.spaceGrotesk(
                        textStyle: TextStyle(fontSize: 20.sp, color: cBlack)),
                  )),
            ))
          ],
        ),
      ),
    );
  }
}
