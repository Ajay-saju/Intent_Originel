import 'package:flutter/material.dart';
import 'package:intent_original/View/Core/Colors/colors.dart';
import 'package:intent_original/View/Screens/Widgets/titlew_widget.dart';
import 'package:sizer/sizer.dart';

import '../../Core/Size/size.dart';

class TopInterviers extends StatelessWidget {
  const TopInterviers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
        maxHeight: 15.h,
        maxWidth: MediaQuery.of(context).size.width,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) => Column(
                  children: const [
                    CircleProfilePickWidget(),
                    TitleTextWidget(color: cBlack, text: 'Ajay', fontSize: 12)
                  ],
                ),
            separatorBuilder: (BuildContext context, int index) => w1));
  }
}

class CircleProfilePickWidget extends StatelessWidget {
  const CircleProfilePickWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 6.h,
      backgroundColor: amber,
      child: CircleAvatar(
        radius: 5.8.h,
        backgroundColor: white,
        child: CircleAvatar(
          radius: 5.5.h,
          backgroundImage: const NetworkImage(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgPZnsoh9tlFnoEK79W2lmMJBleVBBLFb81Q&usqp=CAU',
          ),
        ),
      ),
    );
  }
}