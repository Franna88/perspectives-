import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perspectives/CommonUi/mainHeaderText.dart';
import 'package:perspectives/CommonUi/stackedUserImages.dart';
import 'package:perspectives/constants/myColors.dart';
import 'package:perspectives/myUtility.dart';

class EventViewDetails extends StatefulWidget {
  const EventViewDetails({super.key});

  @override
  State<EventViewDetails> createState() => _EventViewDetailsState();
}

class _EventViewDetailsState extends State<EventViewDetails> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20,),
          MainHeaderText(
            text: 'Park Live Festival',
            textColor: Colors.white,
          ),
          Text(
            'MON, Aug 01',
            style: GoogleFonts.montserrat(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.pin_drop_outlined,
                color: MyColors().teal,
              ),
              const SizedBox(width: 5,),
              Text(
                '123 Johanesburg drive Staduim',
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
           const SizedBox(height: 8,),
          StackedUserImages(),
           const SizedBox(height: 8,),
            SizedBox(
              width: MyUtility(context).width,
              //height: MyUtility(context).height * 0.05,
              child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad ',
                  overflow: TextOverflow.fade,
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
            ),
          const SizedBox(height: 25,),
        ],
      ),
    );
  }
}
