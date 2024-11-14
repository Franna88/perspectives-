import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perspectives/home/comments/ui/commentContainer.dart';
import 'package:perspectives/home/models/memberViewModel.dart';
import 'package:perspectives/home/perspectives/memberView/ui/memberViewItem.dart';

import '../../../CommonUi/buttons/ButtonStyleLong.dart';
import '../../../CommonUi/mediaViewContainer/mediaViewDetails.dart';
import '../../../CommonUi/mediaViewContainer/mediaViewPage.dart';
import '../../../CommonUi/myBottomNavBar.dart';
import '../../../homePage.dart';
import '../../../myUtility.dart';

class MemberView extends StatefulWidget {
  const MemberView({super.key});

  @override
  State<MemberView> createState() => _MemberViewState();
}

class _MemberViewState extends State<MemberView> {
  int _selectedIndex = 0;

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
      bottomNavigationBar: MyBottomNavBar(
        currentIndex: _selectedIndex,
        onTap: (int index) {
          _onItemTapped(index);
        },
      ),
      body: MediaViewPage(
        coverImage: 'images/festival.jpg',
        imageWidget: MediaViewDetails(),
        content: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            children: [
              ButtonStyleLong(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  buttonText: 'Relive Memories',
                  onTap: () {}),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Member View',
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    '5 People',
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
             
              Expanded(
                child: Container(
                  //height: MyUtility(context).height / 2.1,
                  width: MyUtility(context).width,
                  //color: Colors.amber,
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                          crossAxisCount: 2),
                      itemCount: perspectiveMembers.length,
                      itemBuilder: (context, index) {
                        return MemberViewItem(
                            userImage: perspectiveMembers[index].userImage,
                            userName: perspectiveMembers[index].userName);
                      }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
