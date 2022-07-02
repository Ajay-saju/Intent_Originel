import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:intent_original/View/Core/Colors/colors.dart';
import 'package:intent_original/View/Screens/UI/Interviwer%20edit%20screen/interviewer_edit_screen.dart';
import 'package:sizer/sizer.dart';

class ProfilePicture extends StatelessWidget {
  VoidCallback? ontap;
  ProfilePicture({
    this.ontap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: CircleAvatar(
          backgroundColor: amber,
          radius: 10.4.h,
          child: CircleAvatar(
            radius: 10.h,
            backgroundImage: const NetworkImage(
                'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dXNlcnxlbnwwfHwwfHw%3D&w=1000&q=80'),
          )),
    );
  }
}
