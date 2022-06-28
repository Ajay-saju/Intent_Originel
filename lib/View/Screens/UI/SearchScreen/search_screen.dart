import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intent_original/View/Core/Colors/colors.dart';
import 'package:intent_original/View/Core/Size/size.dart';
import 'package:intent_original/View/Screens/Widgets/custom_search_widget.dart';
import 'package:intent_original/View/Screens/Widgets/titlew_widget.dart';
import 'package:sizer/sizer.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
                  children: [
            h4,
            const SearchWidget(),
            h2,
             DefaultTabController(
                  length: 2,
                  initialIndex: 0,
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      SizedBox(
                        // width: double.infinity,
                        child: TabBar(
                          // isScrollable: true,
                          //  controller: controller,
                          indicatorColor: cBlack,
                          indicatorWeight: .1.h,
                          indicatorPadding:
                              EdgeInsets.only(left: 5.h, right: 5.h),
                          tabs: [
                            Tab(
                                height: 13.h,
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'asset/images/interview 1.png',
                                      fit: BoxFit.cover,
                                    ),
                                    Text(
                                      'Interviewer',
                                      overflow: TextOverflow.ellipsis,
                                      style: GoogleFonts.outfit(
                                          color: Colors.black,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                )),
                            Tab(
                                height: 13.h,
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'asset/images/job-loss 1.png',
                                      fit: BoxFit.cover,
                                    ),
                                    Text(
                                      'Interviewee',
                                      overflow: TextOverflow.ellipsis,
                                      style: GoogleFonts.outfit(
                                          color: Colors.black,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                )),
                          ],
                        ),
                      ),
                      h2,
                      LimitedBox(
                        maxHeight: MediaQuery.of(context).size.height,
                        child: const TabBarView(
                            // controller: controller,
                            children: [
                              CardGridView(),
                              // ListView.separated(itemBuilder: (context, index) => Text('dadaaaa'), separatorBuilder: (context, index)=> SizedBox(height: 30,), itemCount: 20),
                              CardGridView()
                              // Text('page2')
                            ]),
                      )
                    ],
                  ),
                ),
                  ],
                ),
          )),
    );
  }
}

class CardGridView extends StatelessWidget {
  const CardGridView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          mainAxisSpacing: .3.h,
          crossAxisSpacing: .3.h,
        ),
        itemCount: 20,
        itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.all(2.h),
              child: const ProfileCard(),
            ));
  }
}
class ProfileCard extends StatelessWidget {
 
  const ProfileCard({
    
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          //  child: Container(height: 10,color: cBlack,),
          decoration: BoxDecoration(
            boxShadow:[textColorShadow ()],
              borderRadius: BorderRadius.all(Radius.circular(1.h)),
              color: const Color.fromRGBO(128, 199, 255, 0.4),
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgPZnsoh9tlFnoEK79W2lmMJBleVBBLFb81Q&usqp=CAU',
                  ))),
        ),
        Container(
          
          decoration: BoxDecoration(
            
             boxShadow: [
            textColorShadow()
        ],
            color: buttonColor,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(1.h),
                bottomRight: Radius.circular(1.h)),
          ),
          // alignment: Alignment.bottomCenter,
          height: 6.5.h,
          width: double.infinity,

          child: Padding(
            padding: EdgeInsets.all(.8.h),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:const [
                TitleTextWidget(text: 'Muneer', fontSize: 10, color: cBlack,),
               
                TitleTextWidget(text: 'MERN Stack Developer', fontSize: 9, color: cBlack,)
              ],
            ),
          ),
        ),
      ],
    );
  }

  BoxShadow textColorShadow() {
    return const BoxShadow(
              color: textColors,
              blurRadius: 2.0,
              spreadRadius: 0.0,
              offset: Offset(2.0, 2.0), // shadow direction: bottom right
          );
  }
}