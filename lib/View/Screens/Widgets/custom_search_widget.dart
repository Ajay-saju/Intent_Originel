import 'package:flutter/material.dart';
import 'package:intent_original/View/Core/Colors/colors.dart';
import 'package:sizer/sizer.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.5.h),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(1.h),
        child: TextField(
          style: TextStyle(fontSize: 13.sp),
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
              fillColor: buttonColor,
              border: InputBorder.none,
              hintText: 'Search here',
              filled: true,
              hintStyle: TextStyle(
                  color: Colors.black26,
                  fontFamily: 'Poppins-Regular',
                  fontSize: 13.sp),
              suffixIcon: Icon(
                Icons.search_rounded,
                color: Colors.black,
                size: 17.sp,
              )),
          onChanged: (value) {},
        ),
      ),
    );
  }
}
