import 'package:flutter/material.dart';
import 'package:perspectives/CommonUi/mainHeaderText.dart';
import 'package:perspectives/myUtility.dart';

class JournalItemContainer extends StatefulWidget {
  final String backgroundImage;
  final String journalName;
  final Function() onTap;
  const JournalItemContainer(
      {super.key, required this.backgroundImage, required this.journalName, required this.onTap});

  @override
  State<JournalItemContainer> createState() => _JournalItemContainerState();
}

class _JournalItemContainerState extends State<JournalItemContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: InkWell(
        onTap: widget.onTap,
        child: Container(
          height: 200,
          width: MyUtility(context).width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage(widget.backgroundImage),fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(const Color.fromARGB(99, 0, 0, 0), BlendMode.darken)
            ),
          ),
          child: Center(
            child: MainHeaderText(text: widget.journalName, textColor: Colors.white, fontSize: 25,),
          ),
        ),
      ),
    );
  }
}
