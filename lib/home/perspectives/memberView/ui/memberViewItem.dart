import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MemberViewItem extends StatefulWidget {
  final String userImage;
  final String userName;
  const MemberViewItem(
      {super.key, required this.userImage, required this.userName});

  @override
  State<MemberViewItem> createState() => _MemberViewItemState();
}

class _MemberViewItemState extends State<MemberViewItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(widget.userImage), fit: BoxFit.cover),
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.bottomCenter,
              child: new ClipRect(
                child: new BackdropFilter(
                  filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: new Container(
                    height: 35,
                    width: 160,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                        color: Colors.grey.shade200.withOpacity(0.3)),
                    child: new Center(
                      child: Text(
                        widget.userName,
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
