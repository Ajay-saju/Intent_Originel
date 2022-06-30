import 'package:flutter/material.dart';
import 'package:intent_original/View/Core/Colors/colors.dart';
import 'package:intent_original/View/Screens/Widgets/post_button.dart';
import 'package:intent_original/View/Screens/Widgets/post_buttons.dart';
import 'package:intent_original/View/Screens/Widgets/titlew_widget.dart';
import 'package:intent_original/View/Screens/Widgets/top_interviewers.dart';
import 'package:sizer/sizer.dart';
import '../../../Core/Size/size.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding:  EdgeInsets.all(2.h),
            child: SingleChildScrollView (
              child: Column(
                    children: [
              h2,
              Row(
                children: const [
                  Icon(Icons.close_rounded),
                  TitleTextWidget(color: cBlack, text: 'Share Post', fontSize: 20),
                ],
              ),
              h2,
              h1,
               Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const CircleProfilePickWidget(),
                      w1,
                      const TitleTextWidget(
                          color: textColors, text: 'Ajay saju', fontSize: 16),
                    ],
                  ),
                  h2,
                  TextFormField(
                  
            
                  maxLines: 10,
                  autovalidateMode: AutovalidateMode.always,
                  textInputAction: TextInputAction.next,
                  onChanged: (String value) {},
                  keyboardType: TextInputType.name,
                  style:
                      const TextStyle(color: cBlack, fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    focusedBorder: borderstyle(),
                    enabledBorder: borderstyle(),
                    hintText: 'What do you want to talk about ?',
                    hintStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: grey800),
                  ),
                ),
                h4,
                 const PostPageButton(
                  svgPath: 'asset/Icons/photo-camera-svgrepo-com.svg',
                  text: 'Take A photo',
                ),
                h2,
                const PostPageButton(
                  svgPath: 'asset/Icons/photo-svgrepo-com.svg',
                  text: 'Add a photo',
                ),
                h2,
                const PostPageButton(
                    svgPath: 'asset/Icons/document-svgrepo-com.svg',
                    text: 'Document'),
                h2,
                const PostButton()
                    ],
                  ),
            ),
          )),
    );
  }
  OutlineInputBorder borderstyle() {
    return const OutlineInputBorder(
        borderSide: BorderSide(color: cBlack, width: 0.5));
  }
}


