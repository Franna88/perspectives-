import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perspectives/CommonUi/buttons/smallButton.dart';
import 'package:perspectives/CommonUi/mainHeaderText.dart';
import 'package:perspectives/CommonUi/userAvatars.dart';
import 'package:perspectives/constants/myColors.dart';
import 'package:perspectives/myUtility.dart';

class FriendsContainerItem extends StatefulWidget {
  final String userAvatar;

  final String userName;

  final Function() ontap;
  const FriendsContainerItem(
      {super.key,
      required this.userAvatar,
      required this.userName,
      required this.ontap});

  @override
  State<FriendsContainerItem> createState() => _FriendsContainerItemState();
}

class _FriendsContainerItemState extends State<FriendsContainerItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0),
      child: Container(
        height: 60,
        width: MyUtility(context).width,
        decoration: BoxDecoration(
          color: MyColors().fillColor,
          border: Border(
            top: BorderSide(color: MyColors().teal),
            //bottom: BorderSide(color: MyColors().teal),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: UserAvatars(userAvatar: widget.userAvatar),
              ),
              Text(widget.userName,
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold, fontSize: 14)),
              Spacer(),
              InkWell(
                onTap: widget.ontap,
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      color: MyColors().teal,
                      borderRadius: BorderRadius.circular(8)),
                  child: Icon(Icons.remove, color: Colors.white,),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
