import 'package:flutter/material.dart';
import 'package:perspectives/journal/pages/journalView.dart';

import '../../../journal/model/journalModel.dart';
import '../../../journal/ui/journalItemContainer.dart';
import '../../../myUtility.dart';

class ProfileJournalTab extends StatefulWidget {
  const ProfileJournalTab({super.key});

  @override
  State<ProfileJournalTab> createState() => _ProfileJournalTabState();
}

class _ProfileJournalTabState extends State<ProfileJournalTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MyUtility(context).height < 850
          ? MyUtility(context).height / 1.375
          : MyUtility(context).height / 1.31,
      width: MyUtility(context).width,
      //color: Colors.amber,
      child: ListView.builder(
          itemCount: journals.length,
          itemBuilder: (context, index) {
            return JournalItemContainer(
              backgroundImage: journals[index].backgroundImage,
              journalName: journals[index].journalName,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const JournalView()),
                );
              },
            );
          }),
    );
  }
}
