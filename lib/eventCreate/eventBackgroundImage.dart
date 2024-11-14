import 'package:flutter/material.dart';
import 'package:perspectives/eventCreate/eventAddFriends.dart';

import '../../CommonUi/buttons/ButtonStyleLong.dart';
import '../../myUtility.dart';
import '../perspectivesCreate/ui/topnavbar.dart';


class EventBackgroundImage extends StatefulWidget {
  const EventBackgroundImage({super.key});

  @override
  State<EventBackgroundImage> createState() => _EventBackgroundImageState();
}

class _EventBackgroundImageState extends State<EventBackgroundImage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          TopNavBar(
              title: 'Create Event',
              description:
                  'Upload your video and add your image to complete this event',
              imagePath: 'images/camera.png'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              //color: Colors.amber,
              height: MyUtility(context).height * 0.65,
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  
                  Container(
                    height: MyUtility(context).height * 0.25,
                    width: MyUtility(context).width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/imgPlaceHolder.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ButtonStyleLong(
                      buttonText: 'Add Background Image', onTap: () {}),
                      const SizedBox(
                    height: 20,
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ButtonStyleLong(
                          buttonText: 'Continue',
                          onTap: () {
                            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const EventAddFriends()),
              );
                          },
                         // buttonWidht: 120,
                          fontWeight: FontWeight.bold,
                          buttonHeight: 12,
                        ),
                  ),
                   const SizedBox(
                    height: 30,
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