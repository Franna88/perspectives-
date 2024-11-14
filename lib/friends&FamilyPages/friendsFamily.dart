import 'package:flutter/material.dart';
import 'package:perspectives/CommonUi/mainHeaderText.dart';
import 'package:perspectives/friends&FamilyPages/models/friendsFamilyModel.dart';
import 'package:perspectives/friends&FamilyPages/ui/customDropDownButton.dart';
import 'package:perspectives/friends&FamilyPages/ui/friendsContainerItem.dart';
import 'package:perspectives/friends&FamilyPages/ui/mySearchBar.dart';
import 'package:perspectives/myUtility.dart';

class FriendsFamily extends StatefulWidget {
  const FriendsFamily({super.key});

  @override
  State<FriendsFamily> createState() => _FriendsFamilyState();
}

class _FriendsFamilyState extends State<FriendsFamily> {
  var friendsFamilySearch = TextEditingController();
  bool isFamilyOpen = false;
  bool isFriendsOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            MainHeaderText(
              text: 'Friends',
              fontSize: 28,
            ),
            const SizedBox(
              height: 25,
            ),
            MySearchBar(
                textController: friendsFamilySearch, hintText: 'Search'),
            const SizedBox(
              height: 25,
            ),
            Expanded(
              child: SizedBox(
                // Set a specific height to avoid RenderBox error
                //height: MyUtility(context).height * 0.3,
                child: ListView.builder(
                  itemCount: friends.length,
                  itemBuilder: (context, index) {
                    return FriendsContainerItem(
                      userAvatar: friends[index].userAvatar,
                      userName: friends[index].userName,
                      ontap: () {},
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
