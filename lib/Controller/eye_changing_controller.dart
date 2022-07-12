import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intent_original/View/Core/Colors/colors.dart';

class EyeChaingingController extends GetxController {
  // Icon eyeOpen = const Icon(Icons.visibility_rounded,color: cBlack,);
  Icon changeVisibility =
      const Icon(Icons.visibility_off_rounded, color: cBlack);
  // @override
  // void oninit(){
  //   super.onInit();
  //   eyeClose;
  // }

  eyeChange() {
    if (changeVisibility.icon == Icons.visibility_off_rounded) {
      changeVisibility = const Icon(
        Icons.visibility_rounded,
        color: cBlack,
      );
    } else {
      changeVisibility =
          const Icon(Icons.visibility_off_rounded, color: cBlack);
    }
    update();
  }
}
