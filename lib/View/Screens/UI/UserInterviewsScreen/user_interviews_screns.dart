import 'package:flutter/material.dart';
import 'package:intent_original/View/Core/Size/size.dart';
import 'package:intent_original/View/Screens/Widgets/interviews_main_container_widget.dart';
import 'package:intent_original/View/Screens/Widgets/user_tab_app_bar.dart';
import 'package:sizer/sizer.dart';

class UserInterviewsScreen extends StatelessWidget {
  const UserInterviewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 7.h),
        child: const UserTabAppBar(
          title: 'Interviews',
        ),
      ),
      body: Column(
        children: [
          h4,
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (context, index) => Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2.h),
                      child: Column(
                        children: [
                          const InterviewsMainContainerWidget(),
                          h4
                        ],
                      ),
                    ), ),
          ),
          
       
        ],
      ),
    );
  }

 
}




