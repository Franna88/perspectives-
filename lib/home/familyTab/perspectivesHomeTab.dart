import 'package:flutter/material.dart';
import 'package:perspectives/CommonUi/perspectiveContainer.dart';
import 'package:perspectives/home/models/perspectivesHomeTabModel.dart';
import 'package:perspectives/home/perspectives/perspectiveFullView.dart';

import '../../myUtility.dart';

class PerspectivesHomeTab extends StatefulWidget {
  const PerspectivesHomeTab({super.key});

  @override
  State<PerspectivesHomeTab> createState() => _PerspectivesHomeTabState();
}

class _PerspectivesHomeTabState extends State<PerspectivesHomeTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MyUtility(context).height * 0.54,
      width: MyUtility(context).width,
      child: ListView.builder(
          itemCount: perspectivestab.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
              child: PerspectiveContainer(
                perspectiveImage: perspectivestab[index].perspectiveImage,
                header: perspectivestab[index].header,
                date: perspectivestab[index].date,
                amountPeople: perspectivestab[index].amountPeople,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PerspectiveFullView()),
                  );
                },
              ),
            );
          }),
    );
  }
}
