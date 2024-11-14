import 'package:flutter/material.dart';
import 'package:perspectives/CommonUi/buttons/myDatePicker.dart';
import 'package:perspectives/CommonUi/mainHeaderText.dart';
import 'package:perspectives/CommonUi/textfields/MyTextFieldStyle.dart';
import 'package:perspectives/myUtility.dart';
import 'package:perspectives/perspectivesCreate/pages/addFriends.dart';
import 'package:perspectives/perspectivesCreate/ui/topnavbar.dart';

import '../../CommonUi/buttons/ButtonStyleLong.dart';

class MemoryDetails extends StatefulWidget {
  const MemoryDetails({super.key});

  @override
  State<MemoryDetails> createState() => _MemoryDetailsState();
}

class _MemoryDetailsState extends State<MemoryDetails> {
  var memoryTitle = TextEditingController();
  var memoryDescription = TextEditingController();
  var memoryDate = TextEditingController();

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
                title: 'Add your Memory Details',
                description: 'Add additional details on your memory',
                imagePath: 'images/details.png'),
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
                    MainHeaderText(text: 'Memory Title'),
                    const SizedBox(
                      height: 10,
                    ),
                    MyTextFieldStyle(
                        textfieldController: memoryTitle,
                        labelText: 'Memory Title',
                        textFieldType: ''),
                    const SizedBox(
                      height: 25,
                    ),
                    MainHeaderText(text: 'Memory Description'),
                    const SizedBox(
                      height: 10,
                    ),
                    MyTextFieldStyle(
                        textfieldController: memoryDescription,
                        labelText: 'Memory Description',
                        textFieldType: ''),
                    const SizedBox(
                      height: 25,
                    ),
                    MainHeaderText(text: 'Memory Date'),
                    const SizedBox(
                      height: 10,
                    ),
                    MyDatePicker(
                        textfieldController: memoryDate,
                        hintText: '22-04-2024',
                        refresh: () {},
                        description: '',
                        width: MyUtility(context).width),
                    Spacer(),
                    Center(
                      child: ButtonStyleLong(
                        buttonText: 'Continue',
                        onTap: () {
                          // if perspective creation should go to PerspectiveBackgrounImage()
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AddFriends()),
                          );
                        },
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
