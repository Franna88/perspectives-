import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perspectives/CommonUi/mainHeaderText.dart';
import 'package:perspectives/CommonUi/userAvatars.dart';
import 'package:perspectives/friends&FamilyPages/otherUserFriends&Family/othersFriendsPage.dart';
import 'package:perspectives/friends&FamilyPages/ui/stackedAvatarButton.dart';
import 'package:perspectives/loginPages/login.dart';
import 'package:perspectives/myUtility.dart';
import 'package:perspectives/profiles/editProfile/editProfile.dart';
import 'package:perspectives/profiles/generational/generationalTabPage.dart';
import 'package:perspectives/profiles/ui/profile_popup.dart';
import 'package:perspectives/profiles/ui/profilesFamilyFriendsColumn.dart';

class ProfilesTop extends StatefulWidget {
  final String userBio;
  final String userName;
  final String userImage;

  final String frirndsAmount;
  const ProfilesTop(
      {super.key,
      required this.userName,
      required this.userImage,
      required this.frirndsAmount,
      required this.userBio});

  @override
  State<ProfilesTop> createState() => _ProfilesTopState();
}

class _ProfilesTopState extends State<ProfilesTop> {
  void _showProfilePopup() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return ProfilePopup(
          onLogOut: () {
            // Handle log out logic here
            FirebaseAuth.instance.signOut(); // Close the popup
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Login()),
            );
          },
          onEditProfile: () {
            // Handle edit profile logic here
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const EditProfile()),
            ); // Close the popup
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        width: MyUtility(context).width,
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                StackedAvatarButton(
                    isOwner: true,
                    editProfile: _showProfilePopup,
                    // editProfile: () {
                    //   Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //           builder: (context) => const EditProfile()),
                    //     );
                    // },
                    userImage: widget.userImage,
                    icon: Icons.group_add),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        //color: Colors.amber,
                        width: MyUtility(context).height < 850
                            ? MyUtility(context).width * 0.598
                            : MyUtility(context).width * 0.65,
                        child: MainHeaderText(
                          text: widget.userName,
                          fontSize: MyUtility(context).height < 850 ? 15 : 18,
                        )),
                    const SizedBox(
                      height: 5,
                    ),
                    ProfilesFamilyFriensColumn(
                      frirndsAmount: widget.frirndsAmount,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const GenerationalTabPage()),
                        );
                      },
                      friendsOnTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OthersFriendsPage()),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              widget.userBio,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
