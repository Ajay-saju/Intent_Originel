import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intent_original/View/Core/Colors/colors.dart';
import 'package:intent_original/View/Screens/UI/AddPostScreen/user_post_screen.dart';
import 'package:intent_original/View/Screens/UI/ChatScreen/chat_screen.dart';
import 'package:intent_original/View/Screens/UI/HomeScreen/horm_screen.dart';
import 'package:intent_original/View/Screens/UI/InterviewerProfileScreen/interviewer_profile_screen.dart';
import 'package:intent_original/View/Screens/UI/ProfileScreen/profile_screen.dart';
import 'package:intent_original/View/Screens/UI/SearchScreen/search_screen.dart';
import 'package:sizer/sizer.dart';

class BottumNavBarScreen extends StatefulWidget {
  const BottumNavBarScreen({Key? key}) : super(key: key);

  @override
  State<BottumNavBarScreen> createState() => _BottumNavBarScreenState();
}

class _BottumNavBarScreenState extends State<BottumNavBarScreen> {
  int _currentIndex = 0;
  PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: const <Widget>[
            HomeScreen(),
            ChatScreen(),
            PostScreen(),
            SearchScreen(),
            InterviwerProfileScreen()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
              icon: SvgPicture.asset('asset/Icons/home-svgrepo-com (2).svg',
                  width: 2.9.h, height: 2.9.h, color: textColors),
              title: const Text('Home')),
          BottomNavyBarItem(
              icon: SvgPicture.asset('asset/Icons/chat-svgrepo-com (3).svg',
                  width: 2.9.h, height: 2.9.h, color: textColors),
              title: const Text('Chat')),
          BottomNavyBarItem(
              icon: SvgPicture.asset('asset/Icons/add-svgrepo-com.svg',
                  width: 2.9.h, height: 2.9.h, color: textColors),
              title: const Text('Post')),
          BottomNavyBarItem(
              icon: SvgPicture.asset('asset/Icons/search-svgrepo-com (1).svg',
                  width: 2.9.h, height: 2.9.h, color: textColors),
              title: const Text('Search')),
          BottomNavyBarItem(
              icon: SvgPicture.asset('asset/Icons/user-thin-svgrepo-com.svg',
                  width: 2.9.h, height: 2.9.h, color: textColors),
              title: const Text('User')),
        ],
        onItemSelected: (int index) {
          setState(() {
            _currentIndex = index;
            _pageController.jumpToPage(index);
          });
        },
      ),
    );
  }
}
