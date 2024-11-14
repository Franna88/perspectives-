import 'package:flutter/material.dart';
import 'package:perspectives/CommonUi/perspectiveContainer.dart';
import 'package:perspectives/home/models/perspectivesHomeTabModel.dart';
import 'package:perspectives/profiles/models/profilePerspectives.dart';

import '../../../myUtility.dart';




class ProfilePerspectivesTab extends StatefulWidget {
  const ProfilePerspectivesTab({super.key});

  @override
  State<ProfilePerspectivesTab> createState() => _ProfilePerspectivesTabState();
}

class _ProfilePerspectivesTabState extends State<ProfilePerspectivesTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.amber,
      height: MyUtility(context).height * 0.54,
      width: MyUtility(context).width,
      child: ListView.builder(
          itemCount: profilePerspectives.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
              child: PerspectiveContainer(
                  perspectiveImage: profilePerspectives[index].perspectiveImage,
                  header: profilePerspectives[index].header,
                  date: profilePerspectives[index].date,
                  amountPeople: profilePerspectives[index].amountPeople, onTap: () {  },),
            );
          }),
    );
  }
}