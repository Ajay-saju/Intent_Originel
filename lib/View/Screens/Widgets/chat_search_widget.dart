import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intent_original/View/Core/Colors/colors.dart';
import 'package:sizer/sizer.dart';

class ChatSearchWidget extends StatelessWidget {
  const ChatSearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h, right: 2.h),
      child: CupertinoSearchTextField(
        itemColor: cBlack,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.h),
            color: const Color.fromARGB(198, 223, 235, 241),
            border: Border.all(color: cBlack)),
      ),
    );
  }
}
