import 'package:flutter/material.dart';
import 'package:perspectives/home/perspectives/popup/perspectiveOptionsPopup.dart';
import 'package:waterfall_flow/waterfall_flow.dart';

import '../../CommonUi/buttons/ButtonStyleLong.dart';
import '../../CommonUi/mediaViewContainer/mediaViewDetails.dart';
import '../../CommonUi/mediaViewContainer/mediaViewPage.dart';
import '../../CommonUi/myBottomNavBar.dart';
import '../../CommonUi/waterFallMediaCon.dart';
import '../../constants/myColors.dart';
import '../../friends&FamilyPages/friendsFamily.dart';
import '../../homePage.dart';
import '../../journal/journalMain.dart';
import '../../myUtility.dart';
import '../../perspectivesCreate/pages/chooseMemoryType.dart';
import '../../profiles/userProfiles.dart';
import '../contentViewScreen/contentViewScreen.dart';
import '../models/waterfallMediaModel.dart';
import '../perspectivesHome.dart';

class PerspectiveFullView extends StatefulWidget {
  const PerspectiveFullView({super.key});

  @override
  State<PerspectiveFullView> createState() => _PerspectiveFullViewState();
}

class _PerspectiveFullViewState extends State<PerspectiveFullView> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    PerspectivesHome(),
    FriendsFamily(),
    ChooseMemoryType(),
    JournalMain(),
    UserProfiles(),
  ];

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
    Future openPerspectiveOptionsDialog() => showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            insetPadding: EdgeInsets.all(0),
            backgroundColor: const Color.fromARGB(0, 255, 193, 7),
            child: PerspectiveOptionsPopup(),
          );
        });

    return Scaffold(
      bottomNavigationBar: MyBottomNavBar(
        currentIndex: _selectedIndex,
        onTap: (int index) {
          _onItemTapped(index);
        },
      ),
      floatingActionButton: FloatingActionButton(
          shape: CircleBorder(),
          elevation: 15,
          backgroundColor: MyColors().teal,
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: () {}),
      body: MediaViewPage(
        coverImage: 'images/festival.jpg',
        imageWidget: MediaViewDetails(),
        content: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              ButtonStyleLong(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  buttonText: 'Relive Memories',
                  onTap: () {
                    openPerspectiveOptionsDialog();
                  }),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: SizedBox(
                  //height: MyUtility(context).height * 0.51,
                  width: MyUtility(context).width,
                  child: CustomScrollView(
                    slivers: [
                      SliverWaterfallFlow(
                        gridDelegate:
                            SliverWaterfallFlowDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 5,
                                crossAxisSpacing: 5),
                        delegate: SliverChildBuilderDelegate(
                            childCount: memoryMedia.length,
                            (BuildContext contex, int index) {
                          return WaterFallMediaCon(
                              image: memoryMedia[index].image,
                              likes: memoryMedia[index].likes, onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ContentViewScreen()),
                              );
                            },);
                        }),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
