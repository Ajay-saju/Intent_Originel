import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intent_original/Controller/time_controller.dart';
import 'package:intent_original/Controller/to_time_controller.dart';
import 'package:intent_original/View/Core/Size/size.dart';
import 'package:intent_original/View/Screens/Widgets/select_time_widget.dart';
import 'package:intent_original/View/Screens/Widgets/to_time_select_widget.dart';
import 'package:sizer/sizer.dart';

class SelectInterviewTimewidget extends StatelessWidget {
  const SelectInterviewTimewidget({
    Key? key,
    required this.timeController,
    required this.textFromTimeController,
    required this.toTimeControler,
    required this.textToTimeController,
  }) : super(key: key);

  final FromTimeController timeController;
  final TextEditingController textFromTimeController;
  final ToTimeController toTimeControler;
  final TextEditingController textToTimeController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          'asset/Icons/time-left-svgrepo-com.svg',
          width: 3.5.h,
          height: 3.5.h,
        ),
        w1,
        Row(
          children: [
            SelectTimeFromWidget(
              timeController: timeController,
              textTimeController:
                  textFromTimeController,
              hintText: 'From',
            ),
            w1,
            ToTimeSelectWidget(
                toTimeControler:
                    toTimeControler,
                textToTimeController:
                    textToTimeController),
          ],
        )
      ],
    );
  }
}
