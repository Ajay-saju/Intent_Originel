import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DateController extends GetxController {
  DateTime date = DateTime.now();

 Future< DateTime?> pickDate(context) async {
    
    DateTime? newDate = await showDatePicker(
        context: context,
        initialDate: date,
        firstDate: DateTime.now(),
        lastDate: DateTime(2023));

    if (newDate == null) return null;
    date= newDate;
    
    update();
    return date;
    // print("----------------------------------------------------: ${date}");
  }
}

