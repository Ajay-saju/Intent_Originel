
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intent_original/Controller/time_controller.dart';
import 'package:intent_original/View/Core/Colors/colors.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

class SelectTimeFromWidget extends StatelessWidget {
  const SelectTimeFromWidget({
    Key? key,
    required this.timeController,
    required this.textTimeController, required this.hintText,
  }) : super(key: key);

  final FromTimeController timeController;
  final TextEditingController textTimeController;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 4.h,
      width: 9.4.h,
      child: InkWell(
        onTap: () async {
          await timeController
              .pickTime(context);

          final timeFormate =
              DateFormat.jm()
                  .format(DateTime(
                      DateTime.now().year,
                      DateTime.now().month,
                      DateTime.now().day,
                      timeController
                          .fromTime.hour,
                      timeController
                          .fromTime.minute));
          textTimeController.text =
              timeFormate;
              // print(textTimeController);
          // dateFormate;
        },
        child: TextFormField(
          textAlignVertical:
              TextAlignVertical.center,
          showCursor: false,
          controller: textTimeController,
          enabled: false,
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  fontSize: 12.sp,
                  color: cBlack)),
          keyboardType: TextInputType.none,
          textInputAction:
              TextInputAction.next,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(
                top: 1.h, left: 1.h),
            border:
                const OutlineInputBorder(),
            hintText: hintText,
            hintStyle: TextStyle(
                fontSize: 12.sp,
                color: cBlack),
          ),
        ),
      ),
    );
  }
}
