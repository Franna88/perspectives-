import 'package:flutter/material.dart';
import 'package:perspectives/CommonUi/buttons/ButtonStyleLong.dart';
import 'package:perspectives/CommonUi/mediaViewContainer/mediaViewDetails.dart';
import 'package:perspectives/CommonUi/mediaViewContainer/mediaViewPage.dart';
import 'package:perspectives/CommonUi/myBottomNavBar.dart';
import 'package:perspectives/CommonUi/waterFallMediaCon.dart';

import 'package:perspectives/constants/myColors.dart';
import 'package:perspectives/friends&FamilyPages/otherUserFriends&Family/othersFriendsPage.dart';
import 'package:perspectives/home/contentViewScreen/contentViewScreen.dart';
import 'package:perspectives/home/perspectives/perspectiveFullView.dart';
import 'package:perspectives/profiles/editProfile/editProfile.dart';
import 'package:perspectives/friends&FamilyPages/friendsFamily.dart';
import 'package:perspectives/home/comments/comments.dart';
import 'package:perspectives/home/eventTab/eventFullView/eventsFullView.dart';
import 'package:perspectives/home/models/waterfallMediaModel.dart';
import 'package:perspectives/home/notifications/notifications.dart';
import 'package:perspectives/home/perspectives/memberView/memberView.dart';
import 'package:perspectives/home/perspectivesHome.dart';
import 'package:perspectives/journal/journalMain.dart';
import 'package:perspectives/journal/pages/journalView.dart';
import 'package:perspectives/journal/pages/newJournal.dart';
import 'package:perspectives/myUtility.dart';
import 'package:perspectives/profiles/generational/generationalTabPage.dart';
import 'package:perspectives/profiles/userProfiles.dart';
import 'package:waterfall_flow/waterfall_flow.dart';

import 'perspectivesCreate/pages/chooseMemoryType.dart';

class HomePage extends StatefulWidget {
  final int pageIndex;
  const HomePage({super.key, required this.pageIndex});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    PerspectivesHome(),
    FriendsFamily(),
    ChooseMemoryType(),
    JournalMain(),
    UserProfiles(),
  ];

  void _onItemTapped(int index) {
    setState(() {
     
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    _selectedIndex = widget.pageIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: MyBottomNavBar(
          currentIndex: _selectedIndex,
          onTap: (int) {
            _onItemTapped(int);
          },
        ),
        backgroundColor: Color.fromARGB(255, 241, 241, 241),
        body: IndexedStack(
          index: _selectedIndex,
          children: _pages,
        )

        //ContentViewScreen()
        //PerspectiveFullView()
        //GenerationalTabPage()
        //OthersFriendsPage()
        //EditProfile()
        //
        //
        //JournalView()
        //NewJournal()
        //
        // EventsFullView()
        // Comments()
        //MemberView()
        //Notifications()
        //
        //Login(),
        );
  }
}
