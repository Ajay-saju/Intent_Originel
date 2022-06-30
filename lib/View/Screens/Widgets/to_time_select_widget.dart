import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intent_original/Controller/to_time_controller.dart';
import 'package:intent_original/View/Core/Colors/colors.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

class ToTimeSelectWidget extends StatelessWidget {
  const ToTimeSelectWidget({
    Key? key,
    required this.toTimeControler,
    required this.textToTimeController,
  }) : super(key: key);

  final ToTimeController toTimeControler;
  final TextEditingController textToTimeController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 4.h,
      width: 9.4.h,
      child: InkWell(
        onTap: () async {
          await toTimeControler
              .pickToTime(context);

          final timeFormate = DateFormat
                  .jm()
              .format(DateTime(
                  DateTime.now().year,
                  DateTime.now().month,
                  DateTime.now().day,
                  toTimeControler
                      .toTime.hour,
                  toTimeControler
                      .toTime
                      .minute));
          textToTimeController.text =
              timeFormate;
          // print(textTimeController);
          // dateFormate;
        },
        child: TextFormField(
          textAlignVertical:
              TextAlignVertical.center,
          showCursor: false,
          controller:
              textToTimeController,
          enabled: false,
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  fontSize: 12.sp,
                  color: cBlack)),
          keyboardType:
              TextInputType.none,
          textInputAction:
              TextInputAction.next,
          decoration: InputDecoration(
            contentPadding:
                EdgeInsets.only(
                    top: 1.h,
                    left: 1.h),
            border:
                const OutlineInputBorder(),
            hintText: 'To',
            hintStyle: TextStyle(
                fontSize: 12.sp,
                color: cBlack),
          ),
        ),
      ),
    );
  }
}
