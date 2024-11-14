import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perspectives/CommonUi/buttons/smallButton.dart';
import 'package:perspectives/CommonUi/userAvatars.dart';
import 'package:perspectives/constants/myColors.dart';
import 'package:perspectives/myUtility.dart';

class NotificationContainer extends StatefulWidget {
  final String userAvatar;
  final String timeStamp;
  final String userName;
  final String notification;
  final Function() ontap;
  const NotificationContainer(
      {super.key,
      required this.userAvatar,
      required this.timeStamp,
      required this.userName,
      required this.notification,
      required this.ontap});

  @override
  State<NotificationContainer> createState() => _NotificationContainerState();
}

class _NotificationContainerState extends State<NotificationContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Container(
        width: MyUtility(context).width,
        decoration: BoxDecoration(
          color: MyColors().fillColor,
          border: Border(
            top: BorderSide(color: MyColors().teal),
            bottom: BorderSide(color: MyColors().teal),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: UserAvatars(userAvatar: widget.userAvatar),
              ),
              SizedBox(
                width: MyUtility(context).width / 1.8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text: widget.userName,
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.bold, fontSize: 14)),
                          TextSpan(text: ' ${widget.notification}')
                        ],
                      ),
                    ),
                    Text(
                      widget.timeStamp,
                      style: GoogleFonts.montserrat(
                          color: MyColors().teal, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              SmallButton(
                buttonText: 'View',
                width: 60,
                onTap: widget.ontap,
              )
            ],
          ),
        ),
      ),
    );
  }
}
