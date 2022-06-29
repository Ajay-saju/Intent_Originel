import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ToTimeController extends GetxController {
   TimeOfDay toTime = TimeOfDay.now();

  pickToTime(context, time) async {
    TimeOfDay? newTime = await showTimePicker(
        context: context,
        initialTime: time,
        builder: (context, Widget? child) => MediaQuery(
            data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
            child: child!));
            if(newTime == null)return;
            toTime =newTime;
            update();
  }
}
