import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intent_original/Controller/date_controller.dart';
import 'package:intent_original/View/Core/Colors/colors.dart';
import 'package:intent_original/View/Core/Size/size.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

class SelectDateWidget extends StatelessWidget {
  const SelectDateWidget({
    Key? key,
    required this.dateController,
    required this.textDateController,
  }) : super(key: key);

  final DateController dateController;
  final TextEditingController textDateController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          'asset/Icons/calendar-date-svgrepo-com.svg',
          width: 3.5.h,
          height: 3.5.h,
        ),
        w1,
        SizedBox(
          height: 4.h,
          width: 20.h,
          child: InkWell(
            onTap: () async {
              await dateController
                  .pickDate(context);

                final dateFormate = DateFormat("dd MMM yyyy").format(dateController.date);  
              textDateController.text =
                dateFormate;
            },
            child: TextFormField(
              textAlignVertical: TextAlignVertical.center,
              showCursor: false,
              controller: textDateController,
              enabled: false,
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 12.sp,
                      color: cBlack)),
              keyboardType: TextInputType.none,
              textInputAction:
                  TextInputAction.next,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 1.h,left: 1.h),
                border: const OutlineInputBorder(
                   ),
                hintText: "Select Date",
                hintStyle: TextStyle(
                    fontSize: 12.sp,
                    color: cBlack),
              ),
            ),
          ),
        )
      ],
    );
  }
}
