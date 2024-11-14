import 'package:flutter/material.dart';

import '../../Themes/custom_colors.dart';
import '../../Themes/font_text.dart';


class TopNavBar extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  const TopNavBar({
    super.key,
    required this.title,
    required this.description,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height * 0.35,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [CustomColors.green, CustomColors.blue],
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 4,
            spreadRadius: 0, // Reduced from 1 to 0
            offset: Offset(0, 4), // Changed from Offset(0, 3) to Offset(0, 4)
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: width * 2 / 3, // Set width to 2/3 of screen width
              child: Text(
                title,
                style: FontText(context).headingLargeWhite,
                softWrap: true,
              ),
            ),
            SizedBox(
              width: width * 2 / 3, // Set width to 2/3 of screen width
              child: Text(
                description,
                style: FontText(context).bodySmallWhite,
                softWrap: true,
              ),
            ),
            const SizedBox(height: 20), // Add some spacing
            Image.asset(
              imagePath,
              width: width * 0.2, // 20% of screen width
              height: height * 0.1, // 10% of screen height
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}
