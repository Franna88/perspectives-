import 'package:flutter/material.dart';
import 'package:perspectives/CommonUi/buttons/ButtonStyleLong.dart';
import 'package:perspectives/CommonUi/buttons/myIconButtons.dart';
import 'package:perspectives/CommonUi/mainHeaderText.dart';
import 'package:perspectives/constants/myColors.dart';
import 'package:perspectives/home/eventTab/eventFullView/ui/eventViewDetails.dart';
import 'package:waterfall_flow/waterfall_flow.dart';

import '../../../CommonUi/mediaViewContainer/mediaViewPage.dart';
import '../../../CommonUi/waterFallMediaCon.dart';
import '../../../myUtility.dart';

import '../../CommonUi/myBottomNavBar.dart';
import '../../home/contentViewScreen/contentViewScreen.dart';
import '../../home/models/waterfallMediaModel.dart';
import '../../homePage.dart';

class JournalView extends StatefulWidget {
  const JournalView({super.key});

  @override
  State<JournalView> createState() => _JournalViewState();
}

class _JournalViewState extends State<JournalView> {
  int _selectedIndex = 3;

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
      backgroundColor: Colors.white,
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
        imageWidget: Center(
          child: MainHeaderText(
            text: 'Festivals',
            textColor: Colors.white,
            fontSize: 32,
          ),
        ),
        content: Padding(
          padding: EdgeInsets.only(
            top: MyUtility(context).height < 845 ? 15 : 20,
            left: 20,
            right: 20,
          ),
          child: Column(
            children: [
              ButtonStyleLong(
                buttonText: 'Relive Journal',
                onTap: () {},
                buttonHeight: 14,
              ),
              SizedBox(
                height: MyUtility(context).height < 845 ? 15 : 20,
              ),
              SizedBox(
                height: MyUtility(context).height < 845
                    ? MyUtility(context).height * 0.50
                    : MyUtility(context).height * 0.537,
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
                          onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ContentViewScreen()),
                              );
                            },
                            image: memoryMedia[index].image,
                            likes: memoryMedia[index].likes);
                      }),
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
