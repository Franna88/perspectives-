import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perspectives/home/contentViewScreen/iu/dragableContainer.dart';

import 'package:perspectives/CommonUi/stackedUserImages.dart';
import 'package:perspectives/CommonUi/userAvatars.dart';
import 'package:perspectives/constants/myColors.dart';
import 'package:perspectives/home/contentViewScreen/iu/mediaIconButtons.dart';

import 'package:perspectives/myUtility.dart';

class ContentViewScreen extends StatefulWidget {
  const ContentViewScreen({super.key});

  @override
  State<ContentViewScreen> createState() => _ContentViewScreenState();
}

class _ContentViewScreenState extends State<ContentViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Container(
            height: MyUtility(context).height,
            width: MyUtility(context).width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/carShow.jpg'), fit: BoxFit.fill),
            ),
            child: Row(
              children: [
                Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    MediaIconButtons(
                      child: Image.asset(
                        'images/journal.png',
                        color: Colors.white,
                        height: MyUtility(context).height < 850 ? 60 : 80,
                       // scale: 0.7,
                      ),
                    ),
                    const SizedBox(height: 15,),
                    MediaIconButtons(
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Colors.white,
                        ),
                        Text('23', style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                        ),)
                      ],
                    )),
                    const SizedBox(height: 15,),
                    MediaIconButtons(
                      child: Icon(Icons.home, color: Colors.white, size: 35,)
                    ),
                  ],
                ),
                 const SizedBox(width: 20,),
              ],
             
            ),
          ),
          DragableContainer(
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 15),
              child: Column(
                children: [
                  Container(
                    height: 6,
                    width: 85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: MyColors().teal,
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Family Time',
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: MyUtility(context).height < 850 ? 22 : 30,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'SAT, 23 Mei 2020',
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: MyUtility(context).height < 850 ? 10 : 12,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height:  10,
                          ),
                          Text(
                            'Family time at lake Curo',
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: MyUtility(context).height < 850 ? 12 : 14,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          StackedUserImages()
                        ],
                      ),
                      Spacer(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          UserAvatars(
                            userAvatar: 'images/avatar3.jpg',
                            size: MyUtility(context).height < 850 ? 25 : 30,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Lilly Mei',
                            style: GoogleFonts.montserrat(
                                color: Colors.white, fontSize: MyUtility(context).height < 850 ? 14 : 16),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 15,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
