import 'package:flutter/material.dart';
import 'package:perspectives/constants/myColors.dart';

class UserAvatars extends StatefulWidget {
 
  final String userAvatar;
  final double? size;
  const UserAvatars({super.key, required this.userAvatar, this.size, });

  @override
  State<UserAvatars> createState() => _UserAvatarsState();
}

class _UserAvatarsState extends State<UserAvatars> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: MyColors().teal,
        shape: CircleBorder()),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Center(
          child: CircleAvatar(
            radius: widget.size ,
            backgroundImage: AssetImage(widget.userAvatar),
            backgroundColor:  MyColors().teal ,
          ),
        ),
      ),
    );
  }
}
