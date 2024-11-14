import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perspectives/CommonUi/buttons/ButtonStyleLong.dart';
import 'package:perspectives/CommonUi/mainHeaderText.dart';
import 'package:perspectives/CommonUi/textfields/MyTextFieldStyle.dart';
import 'package:perspectives/friends&FamilyPages/ui/stackedAvatarButton.dart';
import 'package:perspectives/myUtility.dart';

import '../../CommonUi/myBottomNavBar.dart';
import '../../constants/myColors.dart';
import '../../homePage.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  bool? isPrivate = false;
  var editUserName = TextEditingController();
  var boi = TextEditingController();
  var generationalKey = TextEditingController();
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.west)),
                  const SizedBox(
                    width: 20,
                  ),
                  MainHeaderText(text: 'Edit Profile'),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  StackedAvatarButton(
                    userImage: 'images/avatar1.jpg',
                    ChangeImage: () {},
                    icon: Icons.flip_camera_ios_outlined,
                  ),
                  SizedBox(
                    width: MyUtility(context).width * 0.60,
                    child: MyTextFieldStyle(
                        textfieldController: editUserName,
                        labelText: 'Lilly Mei',
                        textFieldType: ''),
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              MainHeaderText(text: 'Update Bio'),
              const SizedBox(
                height: 10,
              ),
              MyTextFieldStyle(
                  lines: 3,
                  textfieldController: boi,
                  labelText: 'Update Bio',
                  textFieldType: ''),
              const SizedBox(
                height: 15,
              ),
              MainHeaderText(text: 'Change Generational Key'),
              const SizedBox(
                height: 10,
              ),
              MyTextFieldStyle(
                  textfieldController: generationalKey,
                  labelText: '2365232',
                  textFieldType: 'intType'),
              const SizedBox(
                height: 20,
              ),
              ButtonStyleLong(
                buttonText: 'Share Key',
                onTap: () {},
                buttonHeight: 10,
                buttonWidht: 150,
              ),
              const SizedBox(
                height: 20,
              ),
              MainHeaderText(
                  text: 'Set Active Availibility Date For Generational'),
              Text(
                '*Note: this will set a date for when friends and family will have access to your generational content',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextFieldStyle(
                  textfieldController: generationalKey,
                  labelText: '23-12-2029',
                  textFieldType: 'intType'),
              const SizedBox(
                height: 20,
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
                    text: 'Set Account to Private',
                    fontSize: 16,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
