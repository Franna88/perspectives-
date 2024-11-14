import 'package:flutter/material.dart';
import 'package:perspectives/CommonUi/buttons/ButtonStyleLong.dart';
import 'package:perspectives/CommonUi/textfields/MyTextFieldStyle.dart';
import 'package:perspectives/constants/myColors.dart';

import '../../CommonUi/mainHeaderText.dart';
import '../../CommonUi/myBottomNavBar.dart';
import '../../homePage.dart';
import '../../myUtility.dart';

class NewJournal extends StatefulWidget {
  const NewJournal({super.key});

  @override
  State<NewJournal> createState() => _NewJournalState();
}

class _NewJournalState extends State<NewJournal> {
  var journalTilte = TextEditingController();
  bool? isPrivate = false;
  int _selectedIndex = 4;

  void _onItemTapped(int index) {
    setState(() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage(pageIndex: index)),
      );
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: MyBottomNavBar(
        currentIndex: _selectedIndex,
        onTap: (int index) {
          _onItemTapped(index);
        },
      ),
      body: Padding(
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
              height: 5,
            ),
            MainHeaderText(text: 'New Journal +'),
            const SizedBox(
              height: 25,
            ),
            MainHeaderText(
              text: 'Journal Title',
              fontSize: 16,
            ),
            const SizedBox(
              height: 5,
            ),
            MyTextFieldStyle(
                textfieldController: journalTilte,
                labelText: 'Journal Title',
                textFieldType: ''),
            const SizedBox(
              height: 25,
            ),
            ButtonStyleLong(buttonText: 'Add Cover Image', onTap: () {}),
            const SizedBox(
              height: 25,
            ),
            Container(
              height: 200,
              width: MyUtility(context).width,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/imgPlaceholder.png'),
                    fit: BoxFit.cover),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                    activeColor: MyColors().teal,
                    value: isPrivate,
                    onChanged: (newBool) {
                      setState(() {
                        isPrivate = newBool;
                        //isPrivate = ! isPrivate;
                      });
                    }),
                const SizedBox(
                  width: 5,
                ),
                MainHeaderText(
                  text: 'Private Journal',
                  fontSize: 16,
                ),
              ],
            ),
            Spacer(),
            Center(
                child: ButtonStyleLong(
              buttonText: 'Continue',
              onTap: () {},
              buttonHeight: 14,
              buttonWidht: MyUtility(context).width * 0.75,
            )),
            SizedBox(
              height: MyUtility(context).height < 850 ? 10 : 20,
            ),
          ],
        ),
      ),
    );
  }
}
