import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PostFromUserWidget extends StatelessWidget {
  const PostFromUserWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
