import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perspectives/CommonUi/buttons/myTextButtons.dart';
import 'package:perspectives/CommonUi/buttons/smallButton.dart';
import 'package:perspectives/constants/myColors.dart';
import 'package:perspectives/profiles/editProfile/editProfile.dart';

class ProfilePopup extends StatelessWidget {
  final VoidCallback onLogOut;
  final VoidCallback onEditProfile;

  const ProfilePopup({
    Key? key,
    required this.onLogOut,
    required this.onEditProfile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      title: const Text('Profile Options'),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: onEditProfile,
            child: Container(
              height: 50,
              width: double.infinity, // Makes the button extend the full width
              decoration: BoxDecoration(
                color: MyColors().teal,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  'Edit Profile',
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: onLogOut,
            child: Container(
              height: 50,
              width: double.infinity, // Makes the button extend the full width
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Colors.grey, // Border color
                  width: 1, // Border width
                ),
              ),
              child: Center(
                child: Text(
                  'Logout',
                  style: GoogleFonts.montserrat(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
