
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intent_original/View/Core/Colors/colors.dart';
import 'package:intent_original/View/Screens/Widgets/title_text_bold_widget.dart';
import 'package:sizer/sizer.dart';

class PostTitleWidget extends StatelessWidget {
  final String title  ;
  final String? subTitle ;
  
  const PostTitleWidget({
    Key? key, required this.title, this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start,
      children: [
          TitleTextBoldWidget(
          color: cBlack,
          fontSize: 14,
          text: title,
        ),
        if(subTitle!=null)
        Text(
          subTitle!,
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.outfit(
              color: Colors.black54,
              fontSize: 11.sp,
              fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
