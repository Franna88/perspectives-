import 'package:flutter/material.dart';
import 'package:perspectives/CommonUi/mainHeaderText.dart';
import 'package:perspectives/home/models/notificationsModel.dart';
import 'package:perspectives/home/notifications/ui/notificationContainers.dart';
import 'package:perspectives/myUtility.dart';

import '../../CommonUi/myBottomNavBar.dart';
import '../../friends&FamilyPages/friendsFamily.dart';
import '../../homePage.dart';
import '../../journal/journalMain.dart';
import '../../perspectivesCreate/pages/chooseMemoryType.dart';
import '../../profiles/userProfiles.dart';
import '../perspectivesHome.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
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
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage(pageIndex: index)),
      );
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: MyBottomNavBar(
        currentIndex: _selectedIndex,
        onTap: (int index) {
          _onItemTapped(index);
        },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Icon(Icons.arrow_back)),
                const SizedBox(
                  width: 25,
                ),
                MainHeaderText(text: 'Notifications')
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: MyUtility(context).height / 1.25,
              width: MyUtility(context).width,
              //color: Colors.amber,
              child: ListView.builder(
                itemCount: notifications.length,
                itemBuilder: (context, index) {
                  return NotificationContainer(
                      userAvatar: notifications[index].userAvatar,
                      timeStamp: notifications[index].timeStamp,
                      userName: notifications[index].userName,
                      notification: notifications[index].notification,
                      ontap: notifications[index].ontap);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
