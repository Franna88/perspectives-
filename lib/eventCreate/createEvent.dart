import 'package:flutter/material.dart';
import 'package:perspectives/CommonUi/buttons/myDatePicker.dart';
import 'package:perspectives/CommonUi/mainHeaderText.dart';
import 'package:perspectives/CommonUi/textfields/MyTextFieldStyle.dart';
import 'package:perspectives/eventCreate/createEventDate.dart';
import 'package:perspectives/myUtility.dart';
import 'package:perspectives/perspectivesCreate/ui/topnavbar.dart';

import '../../CommonUi/buttons/ButtonStyleLong.dart';

class CreateEvent extends StatefulWidget {
  const CreateEvent({super.key});

  @override
  State<CreateEvent> createState() => _CreateEventState();
}

class _CreateEventState extends State<CreateEvent> {
  var memoryTitle = TextEditingController();
  var memoryDescription = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SizedBox(
        width: MyUtility(context).width,
        height: MyUtility(context).height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopNavBar(
                title: 'Create Event',
                description: 'Create a event and invite friends and family to add their memories for the upcoming event',
                imagePath: 'images/calendar1.png'),
            SizedBox(
              height: MyUtility(context).height < 850 ? 25 : 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                width: MyUtility(context).width,
                height: MyUtility(context).height * 0.60,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MainHeaderText(text: 'Event Name'),
                    const SizedBox(
                      height: 10,
                    ),
                    MyTextFieldStyle(
                        textfieldController: memoryTitle,
                        labelText: 'Event Name',
                        textFieldType: ''),
                    const SizedBox(
                      height: 25,
                    ),
                    MainHeaderText(text: 'Event Description'),
                    const SizedBox(
                      height: 10,
                    ),
                    MyTextFieldStyle(
                      lines: 3,
                        textfieldController: memoryDescription,
                        labelText: 'Describe Event',
                        textFieldType: ''),
                    const SizedBox(
                      height: 25,
                    ),
                    Spacer(),
                    Center(
                      child: ButtonStyleLong(
                        buttonText: 'Continue',
                        onTap: () {Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CreateEventDate()),
              );},
                        buttonWidht: MyUtility(context).width * 0.70,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
