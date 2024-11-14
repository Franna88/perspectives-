import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perspectives/CommonUi/perspectiveContainer.dart';
import 'package:perspectives/constants/myColors.dart';
import 'package:perspectives/home/eventTab/EventsHomeTab.dart';
import 'package:perspectives/home/familyTab/perspectivesHomeTab.dart';
import 'package:perspectives/home/friendsTab/memoriesHomeTab.dart';
import 'package:perspectives/home/notifications/notifications.dart';
import 'package:perspectives/home/singleMemorys/singleMemoryList.dart';
import 'package:perspectives/home/singleMemorys/ui/singleMemoryHomeCon.dart';
import 'package:perspectives/myUtility.dart';

class PerspectivesHome extends StatefulWidget {
  const PerspectivesHome({super.key});

  @override
  State<PerspectivesHome> createState() => _PerspectivesHomeState();
}

class _PerspectivesHomeState extends State<PerspectivesHome> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'PERSPECTIVE',
                  style: GoogleFonts.abel(fontSize: 35, letterSpacing: 4),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {
                    //TO DO
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => const Notifications()),
                    );
                  },
                  icon: Icon(
                    Icons.favorite_border_outlined,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Text(
              'A Good life is a collection of happy memories...',
              style: GoogleFonts.abel(
                fontWeight: FontWeight.w700,
                fontSize: MyUtility(context).height < 850 ? 14 : 16,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SingleMemoryList(),
          //SingleMemoryHomeCon(),
          const SizedBox(
            height: 15,
          ),
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
                      fontSize: MyUtility(context).height < 850 ? 12 : 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Memories',
                    style: GoogleFonts.montserrat(
                      fontSize: MyUtility(context).height < 850 ? 12 : 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Events',
                    style: GoogleFonts.montserrat(
                      fontSize: MyUtility(context).height < 850 ? 12 : 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              //height: MyUtility(context).height * 0.46,
              width: MyUtility(context).width,
              child: const TabBarView(
                children: [
                  PerspectivesHomeTab(),
                  MemoriesHomeTab(),
                  EventsHomeTab()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
