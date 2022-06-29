import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FromTimeController extends GetxController {
  TimeOfDay fromTime = TimeOfDay.now();

  pickTime(context) async {
    TimeOfDay? newTime = await showTimePicker(
        context: context,
        initialTime: fromTime,
        builder: (context, Widget? child) => MediaQuery(
            data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
            child: child!));
    if (newTime == null) return;
    fromTime = newTime;
    update();
  }
}





