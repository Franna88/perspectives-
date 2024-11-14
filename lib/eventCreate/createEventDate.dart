import 'package:flutter/material.dart';
import 'package:perspectives/constants/myColors.dart';
import 'package:perspectives/eventCreate/eventBackgroundImage.dart';
import 'package:table_calendar/table_calendar.dart';

import '../CommonUi/buttons/ButtonStyleLong.dart';
import '../myUtility.dart';
import '../perspectivesCreate/ui/topnavbar.dart';

class CreateEventDate extends StatefulWidget {
  const CreateEventDate({super.key});

  @override
  State<CreateEventDate> createState() => _CreateEventDateState();
}

class _CreateEventDateState extends State<CreateEventDate> {
  DateTime today = DateTime.now();

  void _onDaySelected(DateTime day, DateTime focusDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SizedBox(
        width: MyUtility(context).width,
        height: MyUtility(context).height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopNavBar(
                title: 'Create Event',
                description:
                    'Create a event and invite friends and family to add their memories for the upcoming event',
                imagePath: 'images/calendar1.png'),
            SizedBox(
              height: MyUtility(context).height < 850 ? 25 : 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                width: MyUtility(context).width,
                height: MyUtility(context).height * 0.60,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 241, 241, 241),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: TableCalendar(
                          calendarStyle: CalendarStyle(
                              selectedDecoration:
                                  BoxDecoration(color: MyColors().teal),
                              rangeHighlightColor: Colors.black,
                              markerDecoration:
                                  BoxDecoration(color: MyColors().teal)),
                          headerStyle: HeaderStyle(
                              formatButtonVisible: false, titleCentered: true),
                          focusedDay: today,
                          firstDay: today,
                          lastDay: DateTime.utc(2040, 12, 30),
                          selectedDayPredicate: (day) => isSameDay(day, today),
                          onDaySelected: _onDaySelected,
                        ),
                      ),
                    ),
                    Spacer(),
                    Center(
                      child: ButtonStyleLong(
                        buttonText: 'Continue',
                        onTap: () {Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const EventBackgroundImage()),
              );},
                        buttonWidht: MyUtility(context).width * 0.70,
                      ),
                    ),
                    SizedBox(
                      height: MyUtility(context).height < 850 ? 18 : 30,
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
