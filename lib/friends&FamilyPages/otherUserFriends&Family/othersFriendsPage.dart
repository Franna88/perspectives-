import 'package:flutter/material.dart';
import 'package:perspectives/friends&FamilyPages/models/friendsFamilyModel.dart';
import 'package:perspectives/friends&FamilyPages/otherUserFriends&Family/ui/othersFriendsContainer.dart';
import 'package:perspectives/friends&FamilyPages/ui/mySearchBar.dart';

import '../../CommonUi/mainHeaderText.dart';
import '../../CommonUi/myBottomNavBar.dart';
import '../../homePage.dart';

class OthersFriendsPage extends StatefulWidget {
  const OthersFriendsPage({super.key});

  @override
  State<OthersFriendsPage> createState() => _OthersFriendsPageState();
}

class _OthersFriendsPageState extends State<OthersFriendsPage> {

  int _selectedIndex = 4;
  
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
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column( crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Icon(Icons.west),
                const SizedBox(
                  width: 20,
                ),
                MainHeaderText(text: 'Lilly\'s Friends'),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            MySearchBar(
              textController: TextEditingController(),
              hintText: 'Search',
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: friends.length,
                  itemBuilder: (context, index) {
                    return OtherFriendsContainer(
                        userAvatar: friends[index].userAvatar,
                        userName: friends[index].userName,
                        ontap: () {});
                  }),
            )
          ],
        ),
      ),
    );
  }
}
