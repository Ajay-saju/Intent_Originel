import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intent_original/View/Core/Colors/colors.dart';
import 'package:intent_original/View/Core/Size/size.dart';
import 'package:intent_original/View/Screens/Widgets/custom_elevetedbutton.dart';
import 'package:intent_original/View/Screens/Widgets/new_widget.dart';
import 'package:intent_original/View/Screens/Widgets/title_text_bold_widget.dart';
import 'package:intent_original/View/Screens/Widgets/titlew_widget.dart';
import 'package:intent_original/View/Screens/Widgets/top_interviewers.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          h4,
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 const TitleTextWidget(
                    color: textColors, text: "Ajay Saju", fontSize: 20),
                h1,
                const TitleTextWidget(
                    color: cBlack, text: "Top Interviewr's", fontSize: 10)
              ],
            ),
          ),
          h2,
          const TopInterviers(),
          h2,
           Expanded(
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
                                  CircleAvatar(
                                    radius: 3.3.h,
                                    backgroundImage: const NetworkImage(
                                      'https://image.shutterstock.com/image-photo/successful-businessman-standing-on-light-260nw-1202416018.jpg',
                                    ),
                                  ),
                                  w1,
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                       const TitleTextBoldWidget(
                                        color: cBlack,
                                        fontSize: 14,
                                        text: 'Benjamin',
                                      ),
                                      Text(
                                        'Interviewer',
                                        overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.outfit(
                                            color: Colors.black54,
                                            fontSize: 11.sp,
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  ),
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
                                  children: [
                                    Container(
                                      // child:BackdropFilter(filter: ImageFilter.blur(sigmaX: 5,sigmaY: 5)) ,
                                      height: 28.4.h,
                                      decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(.5),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(2.h)),
                                          image: const DecorationImage(
                                              fit: BoxFit.cover,
                                              image: NetworkImage(
                                                  'https://www.insightsonindia.com/wp-content/uploads/2019/10/Block-Chain-Technology.png'))),
                                    ),
                                     const Align(
                                      alignment: Alignment.bottomCenter,
                                      child: NewWidget(),
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
          )
        ],
      )),
    );
  }
}
