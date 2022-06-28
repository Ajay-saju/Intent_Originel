import 'package:flutter/material.dart';
import 'package:intent_original/View/Core/Size/size.dart';
import 'package:intent_original/View/Screens/Widgets/custom_elevetedbutton.dart';
import 'package:intent_original/View/Screens/Widgets/new_widget.dart';
import 'package:intent_original/View/Screens/Widgets/post_circle_avathar_widget.dart';
import 'package:intent_original/View/Screens/Widgets/post_from_user_widget.dart';
import 'package:intent_original/View/Screens/Widgets/post_title_widget.dart';
import 'package:sizer/sizer.dart';

class HomePagePosts extends StatelessWidget {
  const HomePagePosts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
     child: ListView.builder(
         itemCount: 1,
         itemBuilder: (context, index) => Padding(
               padding: EdgeInsets.only(left: 2.h, right: 2.h),
               child: Container(
                 height: 40.h,
                 decoration: BoxDecoration(
                     color: const Color.fromRGBO(128, 199, 255, .7),
                     borderRadius: BorderRadius.circular(5.h)),
                 child: Padding(
                   padding:
                       EdgeInsets.only(left: 2.h, right: 2.h, top: 1.h),
                   child: Column(
                     children: [
                       Row(
                         children: [
                           const PostCircleAvatarWidget(),
                           w1,
                           const PostTitleWidget(title: 'Sudheesh',subTitle: 'Interviwer',),
                           const Spacer(),
                           SizedBox(
                             height: 3.h,
                             child: const CustomElevetedButton(text: 'ASK',),
                           ),
                         ],
                       ),
                       h1,
                       // ClipRRect(borderRadius: BorderRadius.circular(2.h),child: Stack(children: [
                       //   Image.network( 'https://www.insightsonindia.com/wp-content/uploads/2019/10/Block-Chain-Technology.png',fit: BoxFit.cover,),
                       // ],),),
                       SizedBox(
                         height: 28.5.h,
                         child: Stack(
                           children:const [
                             PostFromUserWidget(),
                               Align(
                               alignment: Alignment.bottomCenter,
                               child: NewWidget(isHome: true,),
                             )
                             // Positioned(child: Container(height: 5.h, color: Colors.white.withOpacity(2),))
                             // Align(
                             //     alignment: Alignment.bottomCenter,
                             //     child: BackdropFilter(
                             //       filter: ImageFilter.blur(
                             //           sigmaX: 5, sigmaY: 5),
                             //       child: Container(
                             //           height: 5.h,
                             //           color: Colors.black.withOpacity(2)),
                             //     )),
                           ],
                         ),
                       )
                     ],
                   ),
                 ),
               ),
             )),
          );
  }
}


