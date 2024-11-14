import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perspectives/constants/myColors.dart';
import 'package:perspectives/profiles/ui/friedReqquestRow.dart';
import 'package:perspectives/profiles/ui/profilesTop.dart';
import 'package:perspectives/profiles/ui/tabs/profileJournalTab.dart';
import 'package:perspectives/profiles/ui/tabs/profilePerspectivesTab.dart';
import 'package:waterfall_flow/waterfall_flow.dart';

import '../CommonUi/waterFallMediaCon.dart';
import '../home/contentViewScreen/contentViewScreen.dart';
import '../home/models/waterfallMediaModel.dart';
import '../myUtility.dart';

class UserProfiles extends StatefulWidget {
  const UserProfiles({super.key});

  @override
  State<UserProfiles> createState() => _UserProfilesState();
}

class _UserProfilesState extends State<UserProfiles> {
  @override
  Widget build(BuildContext context) {
    // Fetch screen height and width
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: DefaultTabController(
        length: 3,
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
                      'Perspectives',
                      style: GoogleFonts.montserrat(
                        fontSize: screenHeight < 850 ? 12 : 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Memories',
                      style: GoogleFonts.montserrat(
                        fontSize: screenHeight < 850 ? 12 : 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Journal',
                      style: GoogleFonts.montserrat(
                        fontSize: screenHeight < 850 ? 12 : 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: screenWidth,
                child: TabBarView(
                  children: [
                    ProfilePerspectivesTab(),
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
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 20, right: 20),
                      child: ProfileJournalTab(),
                    ),
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
