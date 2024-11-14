import 'package:flutter/material.dart';
import 'package:perspectives/CommonUi/userAvatars.dart';
import 'package:perspectives/myUtility.dart';

class StackedUserImages extends StatefulWidget {
  const StackedUserImages({super.key});

  @override
  State<StackedUserImages> createState() => _StackedUserImagesState();
}

class _StackedUserImagesState extends State<StackedUserImages> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 130,
          height: MyUtility(context).height < 845 ? 34 : 45,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: UserAvatars(
                  userAvatar: 'images/avatar1.jpg',
                  size: MyUtility(context).height < 845 ? 15 : null,
                ),
              ),
              Positioned(
                left: 25,
                top: 0,
                child: UserAvatars(
                  userAvatar: 'images/avatar2.jpg',
                   size: MyUtility(context).height < 845 ? 15 : null,
                ),
              ),
              Positioned(
                left: 50,
                top: 0,
                child: UserAvatars(
                  userAvatar: 'images/avatar3.jpg',
                   size: MyUtility(context).height < 845 ? 15 : null,
                ),
              ),
              Positioned(
                top: 0,
                left: 75,
                child: UserAvatars(
                  userAvatar: 'images/avatar4.jpg',
                   size: MyUtility(context).height < 845 ? 15 : null,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
