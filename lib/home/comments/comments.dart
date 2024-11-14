import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perspectives/CommonUi/mainHeaderText.dart';
import 'package:perspectives/constants/myColors.dart';
import 'package:perspectives/home/comments/ui/commentContainer.dart';
import 'package:perspectives/home/models/commentModel.dart';
import 'package:perspectives/home/models/memberViewModel.dart';
import 'package:perspectives/home/perspectives/memberView/ui/memberViewItem.dart';

import '../../../CommonUi/buttons/ButtonStyleLong.dart';
import '../../../CommonUi/mediaViewContainer/mediaViewDetails.dart';
import '../../../CommonUi/mediaViewContainer/mediaViewPage.dart';
import '../../../myUtility.dart';
import '../../CommonUi/myBottomNavBar.dart';
import '../../homePage.dart';

class Comments extends StatefulWidget {
  const Comments({super.key});

  @override
  State<Comments> createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
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
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ButtonStyleLong(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    buttonText: 'Relive Memories',
                    onTap: () {}),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: MyUtility(context).height / 1.8 - 13,
                width: MyUtility(context).width,
                decoration: BoxDecoration(
                  color: Color.fromARGB(98, 202, 201, 201),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    MainHeaderText(
                        textColor: Colors.black, text: 'Memory Comments'),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        height: MyUtility(context).height / 2 - 22,
                        width: MyUtility(context).width,
                        child: ListView.builder(
                          itemCount: comments.length,
                          itemBuilder: (context, index) {
                            return CommentContainer(
                                comment: comments[index].comment,
                                userImage: comments[index].userImage,
                                userName: comments[index].userName);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
