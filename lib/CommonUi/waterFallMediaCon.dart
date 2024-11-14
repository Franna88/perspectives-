import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perspectives/myUtility.dart';

class WaterFallMediaCon extends StatefulWidget {
  final String image;
  final String likes;
  final Function() onTap;
  const WaterFallMediaCon(
      {super.key, required this.image, required this.likes, required this.onTap});

  @override
  State<WaterFallMediaCon> createState() => _WaterFallMediaConState();
}

class _WaterFallMediaConState extends State<WaterFallMediaCon> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Stack(
        children: [
          Image.asset(widget.image),
         
          Positioned(
            bottom: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    widget.likes, style: GoogleFonts.openSans(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.favorite, color: Colors.red,)
                ],
              ),
            ),
          ),
        ],
      ),
    );

    /*Container(
     height: 300,
     
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(widget.image),
         
        ),
      ),
      child: 
    );*/
  }
}
