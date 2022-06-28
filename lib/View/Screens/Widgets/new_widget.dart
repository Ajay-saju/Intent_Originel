import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:intent_original/View/Core/Colors/colors.dart';
import 'package:intent_original/View/Core/Size/size.dart';
import 'package:intent_original/View/Screens/Widgets/titlew_widget.dart';
import 'package:sizer/sizer.dart';

class NewWidget extends StatelessWidget {
  final TitleTextWidget? widget;
  const NewWidget({
    Key? key,  this.widget, required this.isHome,
  }) : super(key: key);
final bool isHome;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(2.h), bottomRight: Radius.circular(2.h)),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          height: 5.h,
          color: Colors.white.withOpacity(0.5),
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.all(.5.h),
            child: Row(
              children: [
                w1,
                const Icon(
                  Icons.favorite_border_sharp,
                  color: amber,
                ),
                SizedBox(
                  width: .5.w,
                ),
                const TitleTextWidget(color: cBlack, text: '12', fontSize: 8),
                w1,
                const Icon(
                  Icons.comment_rounded,
                  color: amber,
                ),
                SizedBox(
                  width: .5.w,
                ),
                const TitleTextWidget(color: cBlack, text: '8', fontSize: 8),
                const Spacer(),
                if (isHome)
                const Icon(Icons.add),
                if(isHome)
                const TitleTextWidget(
                    color: textColors, text: 'Follow', fontSize: 12),

                    
                w1
              ],
            ),
          ),
        ),
      ),
    );
  }
}