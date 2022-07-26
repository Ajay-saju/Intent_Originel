import 'package:flutter/material.dart';
import 'package:intent_original/View/Core/Size/size.dart';
import 'package:intent_original/View/Screens/Widgets/new_widget.dart';
import 'package:intent_original/View/Screens/Widgets/post_circle_avathar_widget.dart';
import 'package:intent_original/View/Screens/Widgets/post_title_widget.dart';
import 'package:intent_original/View/Screens/Widgets/user_tab_app_bar.dart';
import 'package:sizer/sizer.dart';

class UserPostScreen extends StatelessWidget {
  const UserPostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size(double.infinity, 7.h),
            child: const UserTabAppBar(
              title: "Post's",
            )),
        body: SafeArea(
            child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 1,
                  itemBuilder: (context, index) => Padding(
                        padding: EdgeInsets.all(2.h),
                        child: Container(
                          height: 40.h,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(128, 199, 255, .7),
                              borderRadius: BorderRadius.circular(5.h)),
                              child: Padding(
                                padding:  EdgeInsets.all(2.h),
                                child: Column(
                                  children: [
                                    Row(children: [
                                      const PostCircleAvatarWidget(),
                                      w1,
                                      const PostTitleWidget(title: 'Thayyib',),
                                      
                                    ],),
                                    h1,
                                    SizedBox(
                                      height:28.4.h,
                                      child: Stack(
                                        
                                        children:const [
                                          //  PostFromUserWidget(index: index,),
                                          Align(
                                            alignment: Alignment.bottomCenter,
                                            child: NewWidget(isHome: false),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                        ),
                      )),
            )
          ],
        )));
  }
}
