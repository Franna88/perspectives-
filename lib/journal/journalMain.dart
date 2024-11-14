import 'package:flutter/material.dart';
import 'package:perspectives/CommonUi/mainHeaderText.dart';
import 'package:perspectives/journal/model/journalModel.dart';
import 'package:perspectives/journal/ui/journalItemContainer.dart';
import 'package:perspectives/journal/ui/searchBarRow.dart';
import 'package:perspectives/myUtility.dart';

import 'pages/journalView.dart';

class JournalMain extends StatefulWidget {
  const JournalMain({super.key});

  @override
  State<JournalMain> createState() => _JournalMainState();
}

class _JournalMainState extends State<JournalMain> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 25,
          ),
          MainHeaderText(
            text: 'Journal',
            fontSize: MyUtility(context).height < 850 ? 25 : 35,
          ),
          const SizedBox(
            height: 15,
          ),
          SearchBarRow(
              textController: TextEditingController(),
              hintText: 'Search Journal'),
          const SizedBox(
            height: 15,
          ),
          Container(
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
                      journalName: journals[index].journalName, onTap: () { Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const JournalView()),
                ); },);
                }),
          )
        ],
      ),
    );
  }
}
