import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intent_original/View/Core/Colors/colors.dart';
import 'package:intent_original/View/Core/Size/size.dart';
import 'package:intent_original/View/Screens/Widgets/chat_list_tile.dart';
import 'package:intent_original/View/Screens/Widgets/chat_search_widget.dart';
import 'package:intent_original/View/Screens/Widgets/title_text_bold_widget.dart';
import 'package:sizer/sizer.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            h4,
            TitleTextBoldWidget(color: cBlack, text: 'Inbox', fontSize: 18.sp),
            h4,
            const ChatSearchWidget(),
            h2,
            Expanded(
            child: ListView.builder(
                itemCount: imagePath.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(1.5.h),
                    child: ChatListTile(
                      imagePath: imagePath[index],
                      title: title[index],
                      subtitle: subtitle[index],
                      msgNumber: msgNumber[index],
                    ),
                  );
                }),
          ),
          ],
        ),
      )),
    );
  }
}

