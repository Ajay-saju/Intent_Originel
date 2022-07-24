import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intent_original/Controller/post_controller/post_controller.dart';
import 'package:intent_original/View/Core/Colors/colors.dart';
import 'package:intent_original/View/Core/Size/size.dart';
import 'package:intent_original/View/Screens/Widgets/custom_elevetedbutton.dart';
import 'package:intent_original/View/Screens/Widgets/new_widget.dart';
import 'package:intent_original/View/Screens/Widgets/post_from_user_widget.dart';
import 'package:intent_original/View/Screens/Widgets/post_title_widget.dart';
import 'package:intent_original/main.dart';
import 'package:sizer/sizer.dart';

final postController = Get.find<PostController>();

class HomePagePosts extends StatelessWidget {
  const HomePagePosts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    
    
    return Obx(() => postController.loading.value
        ? const CircularProgressIndicator()
        : ListView.separated(
            separatorBuilder: (context, index) {
              // postIndex = index;
              return SizedBox(
                height: 3.h,
              );

              
              
            },
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: postController.getAllPosts.value.posts!.length,
            itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(left: 2.h, right: 2.h),
                  child: Container(
                    height: 40.h,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(128, 199, 255, .7),
                        borderRadius: BorderRadius.circular(5.h)),
                    child: Padding(
                      padding: EdgeInsets.only(left: 2.h, right: 2.h, top: 1.h),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 3.3.h,
                                backgroundImage: NetworkImage(
                                  postController.getAllPosts.value.posts![index]
                                      .createdBy!.profileImg
                                      .toString(),
                                ),
                              ),
                              w1,
                              PostTitleWidget(
                                title: postController.getAllPosts.value
                                    .posts![index].createdBy!.name
                                    .toString(),
                                subTitle: postController.getAllPosts.value
                                    .posts![index].createdBy!.about
                                    .toString(),
                              ),
                              const Spacer(),
                              preferences.getBool("user") == false
                                  ? SizedBox(
                                      height: 3.h,
                                      child: CustomElevetedButton(
                                        text: 'ASK',
                                        color: Colors.green,
                                        onPressed: () {
                                          showDialog<String>(
                                            context: context,
                                            builder: (BuildContext context) =>
                                                AlertDialog(
                                              elevation: 0,
                                              backgroundColor: buttonColor,
                                              title: const Text(
                                                  'Enter Your Requrment'),
                                              content: TextFormField(
                                                  keyboardAppearance:
                                                      Brightness.dark,
                                                  cursorColor: buttonColor,
                                                  textInputAction:
                                                      TextInputAction.next,
                                                  decoration: InputDecoration(
                                                    // enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: buttonColor,width: 0.5.w)),
                                                    contentPadding:
                                                        EdgeInsets.only(
                                                            right: 2.h),
                                                    hintText: 'Type here',
                                                    focusColor: buttonColor,
                                                    hintStyle: TextStyle(
                                                        fontSize: 14.sp),
                                                  )),
                                              actions: <Widget>[
                                                CustomElevetedButton(
                                                    text: '₹ 500',
                                                    color: white,
                                                    onPressed: () {}),
                                                // TextButton(
                                                //   onPressed: () =>
                                                //       Navigator.pop(context, 'Cancel'),
                                                //   child:  Text('Cancel',style:GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16.sp,color: white))),
                                                // ),
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          context, 'OK'),
                                                  child: Text(
                                                    'Submit',
                                                    style: GoogleFonts.poppins(
                                                        textStyle: TextStyle(
                                                            fontSize: 16.sp,
                                                            color: white)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                      ),
                                    )
                                  : const SizedBox(),
                            ],
                          ),
                          h1,
                          // ClipRRect(borderRadius: BorderRadius.circular(2.h),child: Stack(children: [
                          //   Image.network( 'https://www.insightsonindia.com/wp-content/uploads/2019/10/Block-Chain-Technology.png',fit: BoxFit.cover,),
                          // ],),),
                          SizedBox(
                            height: 28.5.h,
                            child: Stack(
                              children:  [
                                PostFromUserWidget(index:  index,),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: NewWidget(
                                    isHome: true,
                                  ),
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
                )));
  }
}
