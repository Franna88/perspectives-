import 'package:flutter/material.dart';
import 'package:perspectives/CommonUi/userAvatars.dart';

import '../../../myUtility.dart';

class SingleMemoryHomeCon extends StatefulWidget {
  final String userAvatar;
  final String username;
  final String content;
  const SingleMemoryHomeCon(
      {super.key,
      required this.userAvatar,
      required this.username,
      required this.content});

  @override
  State<SingleMemoryHomeCon> createState() => _SingleMemoryHomeConState();
}

class _SingleMemoryHomeConState extends State<SingleMemoryHomeCon> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, left: 8, right: 8),
      child: Material(
        elevation: 6,
        borderRadius: BorderRadius.circular(25),
        child: Container(
          height: MyUtility(context).height * 0.18,
          width: MyUtility(context).height < 850 ? 100 : 140,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            image: DecorationImage(
                image: AssetImage(widget.content), fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            child: Column(
              children: [
                UserAvatars(userAvatar: widget.userAvatar),
                Spacer(),
                SizedBox(
                   width: MyUtility(context).height < 850 ? 100 : 140,
                  child: Center(
                    child: Text(
                      widget.username,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          //overflow: TextOverflow.ellipsis
                          ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
