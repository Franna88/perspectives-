import 'package:flutter/material.dart';
import 'package:perspectives/CommonUi/buttons/myIconButtons.dart';
import 'package:perspectives/constants/myColors.dart';
import 'package:perspectives/home/contentViewScreen/contentViewScreen.dart';
import 'package:perspectives/home/eventTab/eventFullView/ui/eventViewDetails.dart';
import 'package:perspectives/perspectivesCreate/pages/memoryDetails.dart';
import 'package:waterfall_flow/waterfall_flow.dart';

import '../../../CommonUi/mediaViewContainer/mediaViewPage.dart';
import '../../../CommonUi/myBottomNavBar.dart';
import '../../../CommonUi/waterFallMediaCon.dart';
import '../../../homePage.dart';
import '../../../myUtility.dart';

import '../../models/waterfallMediaModel.dart';

class EventsFullView extends StatefulWidget {
  const EventsFullView({super.key});

  @override
  State<EventsFullView> createState() => _EventsFullViewState();
}

class _EventsFullViewState extends State<EventsFullView> {
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
      floatingActionButton: FloatingActionButton(
          shape: CircleBorder(),
          elevation: 15,
          backgroundColor: MyColors().teal,
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MemoryDetails()),
            );
          }),
      body: MediaViewPage(
        coverImage: 'images/festival.jpg',
        imageWidget: EventViewDetails(),
        content: Padding(
          padding: EdgeInsets.only(
            top: MyUtility(context).height < 845 ? 15 : 20,
            left: 20,
            right: 20,
          ),
          child: Column(
            children: [
              MyIconButtons(
                buttonText: 'Play Memories',
                onTap: () {},
                icon: Icons.play_arrow_outlined,
              ),
              SizedBox(
                height: MyUtility(context).height < 845 ? 15 : 20,
              ),
              Expanded(
                child: SizedBox(
                  // height: MyUtility(context).height < 845
                  //     ? MyUtility(context).height * 0.50
                  //     : MyUtility(context).height * 0.537,
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
                            likes: memoryMedia[index].likes,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ContentViewScreen()),
                              );
                            },
                          );
                        }),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
