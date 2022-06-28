import 'package:flutter/material.dart';
import 'package:intent_original/View/Core/Size/size.dart';
import 'package:intent_original/View/Screens/UI/SearchScreen/search_screen.dart';
import 'package:intent_original/View/Screens/Widgets/user_tab_app_bar.dart';
import 'package:sizer/sizer.dart';

class UserNetworkScreen extends StatelessWidget {
  const UserNetworkScreen({Key? key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(double.infinity, 7.h),
          child: const UserTabAppBar(title: 'Networks')),
          body: SafeArea(child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 1.5.h),
            child: Column(
              children: [
                h4,
                const Expanded(child: CardGridView()),
                h4
              ],
            ),
          )),
    );
  }
}
