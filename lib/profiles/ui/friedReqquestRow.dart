import 'package:flutter/material.dart';
import 'package:perspectives/CommonUi/buttons/ButtonStyleLong.dart';
import 'package:perspectives/myUtility.dart';

class FriendRequestRow extends StatelessWidget {
  final Function() familyRequest;
  final Function() friendRequest;
  const FriendRequestRow(
      {super.key, required this.familyRequest, required this.friendRequest});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: MyUtility(context).height < 850 ? 15 : 20, horizontal: 20),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ButtonStyleLong(
            buttonText: 'Family Request',
            fontSize: MyUtility(context).height < 850 ? 13 : 15,
            onTap: familyRequest,
            buttonWidht: MyUtility(context).width * 0.40,
             buttonHeight: 10,
          ),
          ButtonStyleLong(
            buttonText: 'Friend Request',
            fontSize: MyUtility(context).height < 850 ? 13 : 15,
            onTap: friendRequest,
            buttonWidht: MyUtility(context).width * 0.40,
            buttonHeight: 10,
          ),
        ],
      ),
    );
  }
}
