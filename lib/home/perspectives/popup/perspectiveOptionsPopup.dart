import 'package:flutter/material.dart';
import 'package:perspectives/CommonUi/buttons/myIconButtons.dart';
import 'package:perspectives/CommonUi/mainHeaderText.dart';
import 'package:perspectives/constants/myColors.dart';
import 'package:perspectives/home/comments/comments.dart';
import 'package:perspectives/home/perspectives/memberView/memberView.dart';
import 'package:perspectives/myUtility.dart';

class PerspectiveOptionsPopup extends StatefulWidget {
  const PerspectiveOptionsPopup({super.key});

  @override
  State<PerspectiveOptionsPopup> createState() =>
      _PerspectiveOptionsPopupState();
}

class _PerspectiveOptionsPopupState extends State<PerspectiveOptionsPopup> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MyUtility(context).width * 0.80,
      height: MyUtility(context).height < 850
          ? MyUtility(context).height / 1.7
          : MyUtility(context).height / 1.9,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: MyColors().teal),
          color: MyColors().fillColor),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            MainHeaderText(
              text: 'How do you want to view your memory',
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            MyIconButtons(
              buttonText: 'Play All',
              onTap: () {},
              icon: Icons.east,
            ),
            const SizedBox(
              height: 15,
            ),
            MyIconButtons(
              buttonText: 'Member Perspective',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MemberView()),
                );
              },
              icon: Icons.east,
            ),
            const SizedBox(
              height: 15,
            ),
            MyIconButtons(
              buttonText: 'Video Memories',
              onTap: () {},
              icon: Icons.east,
            ),
            const SizedBox(
              height: 15,
            ),
            MyIconButtons(
              buttonText: 'Audio Memories',
              onTap: () {},
              icon: Icons.east,
            ),
            const SizedBox(
              height: 15,
            ),
            MyIconButtons(
              buttonText: 'Comments',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Comments()),
                );
              },
              icon: Icons.east,
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
