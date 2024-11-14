import 'package:flutter/material.dart';
import 'package:perspectives/CommonUi/mainHeaderText.dart';
import 'package:perspectives/friends&FamilyPages/ui/mySearchBar.dart';
import 'package:perspectives/perspectivesCreate/ui/selectFriends.dart';

import '../../CommonUi/buttons/ButtonStyleLong.dart';
import '../../friends&FamilyPages/models/friendsFamilyModel.dart';
import '../../friends&FamilyPages/ui/friendsContainerItem.dart';
import '../../myUtility.dart';
import '../perspectivesCreate/ui/topnavbar.dart';


class EventAddFriends extends StatefulWidget {
  const EventAddFriends({super.key});

  @override
  State<EventAddFriends> createState() => _EventAddFriendsState();
}

class _EventAddFriendsState extends State<EventAddFriends> {
  var searchAddPerspectiveFriends = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TopNavBar(
              title: 'Add Friends and Family',
              description:
                  'Add the loved ones you wish to share your event with they can also add to your memory',
              imagePath: 'images/friend.png'),
           SizedBox(
            height: MyUtility(context).height < 850 ? 20 : 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: MainHeaderText(text: 'Friends'),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: MySearchBar(
                textController: searchAddPerspectiveFriends,
                hintText: 'Search Friends'),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
             
              // Set a specific height to avoid RenderBox error
              height: MyUtility(context).height / 2.7,
              child: ListView.builder(
                itemCount: friends.length,
                itemBuilder: (context, index) {
                  return SelectFriends(
                    userAvatar: friends[index].userAvatar,
                    userName: friends[index].userName,
                  );
                },
              ),
            ),
          ),
          Spacer(),
          Center(
            child: ButtonStyleLong(
              buttonText: 'Continue',
              onTap: () {},
              buttonWidht: MyUtility(context).width * 0.70,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
