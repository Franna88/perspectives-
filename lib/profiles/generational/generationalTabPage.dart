import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perspectives/myUtility.dart';
import 'package:waterfall_flow/waterfall_flow.dart';

import '../../CommonUi/myBottomNavBar.dart';
import '../../CommonUi/waterFallMediaCon.dart';
import '../../constants/myColors.dart';
import '../../home/contentViewScreen/contentViewScreen.dart';
import '../../home/models/waterfallMediaModel.dart';
import '../../homePage.dart';
import '../ui/profilesTop.dart';

class GenerationalTabPage extends StatefulWidget {
  const GenerationalTabPage({super.key});

  @override
  State<GenerationalTabPage> createState() => _GenerationalTabPageState();
}

class _GenerationalTabPageState extends State<GenerationalTabPage> {

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
      bottomNavigationBar: MyBottomNavBar(
        currentIndex: _selectedIndex,
        onTap: (int index) {
          _onItemTapped(index);
        },
      ),
      backgroundColor: Colors.white,
      body: DefaultTabController(
        length: 1,
        child: Column(
          children: [
            ProfilesTop(
              userName: 'Julia Moore',
              userImage: 'images/avatar1.jpg',
             
              frirndsAmount: '54',
              userBio:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',

            ),
            const SizedBox(height: 20,),
            Container(
              color: MyColors().fillColor,
              child: TabBar(
                indicatorColor: MyColors().teal,
                labelColor: MyColors().teal,
                indicatorWeight: 4,
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: [
                  Tab(
                    child: Text(
                      'Generational Memorys',
                      style: GoogleFonts.montserrat(
                        fontSize: MyUtility(context).width < 850 ? 14 : 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: MyUtility(context).width,
                child: TabBarView(
                  children: [
                    SizedBox(
                      height: MyUtility(context).height * 0.51,
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
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
