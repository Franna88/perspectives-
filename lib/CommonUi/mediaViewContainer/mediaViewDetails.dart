import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perspectives/CommonUi/mainHeaderText.dart';
import 'package:perspectives/CommonUi/stackedUserImages.dart';
import 'package:perspectives/constants/myColors.dart';

class MediaViewDetails extends StatefulWidget {
  const MediaViewDetails({super.key});

  @override
  State<MediaViewDetails> createState() => _MediaViewDetailsState();
}

class _MediaViewDetailsState extends State<MediaViewDetails> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MainHeaderText(
            text: 'Park Live Festival',
            textColor: Colors.white,
          ),
          Text(
            'widgetdate',
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
          const SizedBox(height: 25,),
        ],
      ),
    );
  }
}
