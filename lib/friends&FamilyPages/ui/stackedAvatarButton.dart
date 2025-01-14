import 'package:flutter/material.dart';
import 'package:perspectives/constants/myColors.dart';
import 'package:perspectives/myUtility.dart';

import '../../CommonUi/userAvatars.dart';

class StackedAvatarButton extends StatefulWidget {
  final bool? isFriend;
  final String userImage;
  final Function()? addFriend;
  final Function()? editProfile;
  final Function()? ChangeImage;
  final IconData icon;
  final bool? isOwner;
  const StackedAvatarButton(
      {super.key,
      required this.userImage,
      this.addFriend,
      required this.icon,
      this.isFriend,
      this.isOwner,
      this.editProfile,
      this.ChangeImage});

  @override
  State<StackedAvatarButton> createState() => _StackedAvatarButtonState();
}

class _StackedAvatarButtonState extends State<StackedAvatarButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.amber,
      height: MyUtility(context).height < 850 ? 70 : 90,
      width: MyUtility(context).height < 850 ? 70 : 90,
      child: Stack(
        children: [
          UserAvatars(
            userAvatar: widget.userImage,
            size: MyUtility(context).height < 850 ? 35 : 42,
          ),
          Visibility(
            visible: widget.isFriend == false,
            child: Positioned(
              bottom: 0,
              right: 0,
              child: InkWell(
                onTap: widget.addFriend,
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: MyColors().teal),
                  child: Icon(
                    widget.icon,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Visibility(
            visible: widget.isOwner == true,
            child: Positioned(
              bottom: 0,
              right: 0,
              child: InkWell(
                onTap: widget.editProfile,
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: MyColors().teal),
                  child: Icon(
                    Icons.edit_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
