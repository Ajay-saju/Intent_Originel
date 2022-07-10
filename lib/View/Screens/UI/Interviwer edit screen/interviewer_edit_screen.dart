import 'package:flutter/material.dart';
import 'package:intent_original/View/Core/Colors/colors.dart';
import 'package:intent_original/View/Core/Size/size.dart';
import 'package:intent_original/View/Screens/Widgets/CircleProfilePicture.dart';
import 'package:intent_original/View/Screens/Widgets/custom_elevetedbutton.dart';
import 'package:intent_original/View/Screens/Widgets/custume_button.dart';
import 'package:intent_original/View/Screens/Widgets/edit-screen_tile.dart';
import 'package:intent_original/View/Screens/Widgets/post_button.dart';
import 'package:intent_original/View/Screens/Widgets/profile_page_divider.dart';
import 'package:intent_original/View/Screens/Widgets/titlew_widget.dart';
import 'package:sizer/sizer.dart';

class IterviwerEditScreen extends StatelessWidget {
  const IterviwerEditScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
            
        children: [
          h2,
          Column(
            children: [
              ProfilePicture(isvisible: true,),
              h2,
              const TitleTextWidget(
                  color: textColors, text: 'Muneer Ahamed', fontSize: 20),
              h1,
              const TitleTextWidget(
                  color: cBlack,
                  text: 'Senior Flutter Developeer',
                  fontSize: 17),
            ],
          ),
          h2,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.h),
            child: Column(
              children: [
                const EditScreenTile(
                  title: 'Muneer Ahemad',
                ),
                const ProfileDivider(),
                h1,
                const EditScreenTile(title: 'Sr.Flutter Developer'),
                const ProfileDivider(),
                h1,
                const EditScreenTile(title: 'munnerahmme09@gmail.com'),
                const ProfileDivider(),
                h1,
                const EditScreenTile(title: '+91-7034019771'),
                const ProfileDivider(),
                h1,
                Center(
                  child: TitleTextWidget(
                    color: grey800!,
                    text: 'Select your fee',
                    fontSize: 16,
                  ),
                ),
                h1,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children:  [
                    CustomElevetedButton(
                      text: 'Free',
                      color: const Color.fromARGB(255, 235, 217, 217), onPressed: () {  },
                    ),
                    CustomElevetedButton(
                      text: '₹ 500',
                      color: Colors.amber, onPressed: () {  },
                    ),
                    CustomElevetedButton(
                      text: '₹ 1000',
                      color: Colors.green, onPressed: () {  },
                    )
                  ],
                ),
                h2,
                Center(
                  child: CustomButton(
                    fontSize: 18,
                    height: 5.h,
                    onPressed: () {},
                    primary: Colors.blueGrey[200]!,
                    title: 'SAVE',
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
