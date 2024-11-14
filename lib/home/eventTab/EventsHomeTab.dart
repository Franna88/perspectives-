import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perspectives/CommonUi/perspectiveContainer.dart';
import 'package:perspectives/constants/myColors.dart';
import 'package:perspectives/eventCreate/createEvent.dart';
import 'package:perspectives/home/eventTab/eventFullView/eventsFullView.dart';
import 'package:perspectives/home/models/eventsHomeTabModel.dart';
import 'package:perspectives/home/models/perspectivesHomeTabModel.dart';

import '../../myUtility.dart';

class EventsHomeTab extends StatefulWidget {
  const EventsHomeTab({super.key});

  @override
  State<EventsHomeTab> createState() => _EventsHomeTabState();
}

class _EventsHomeTabState extends State<EventsHomeTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 20, bottom: 15),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CreateEvent()),
              );
            },
            child: Container(
              height: 30,
              width: 110,
              decoration: BoxDecoration(
                  color: MyColors().teal,
                  borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'New',
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Icon(
                      Icons.add,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            //height: MyUtility(context).height * 0.41 - 21,
            width: MyUtility(context).width,
            child: ListView.builder(
                itemCount: eventstab.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                    child: PerspectiveContainer(
                      perspectiveImage: eventstab[index].perspectiveImage,
                      header: eventstab[index].header,
                      date: eventstab[index].startdate,
                      amountPeople: eventstab[index].amountPeople,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const EventsFullView()),
                        );
                      },
                    ),
                  );
                }),
          ),
        ),
      ],
    );
  }
}
