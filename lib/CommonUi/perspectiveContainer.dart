import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perspectives/CommonUi/stackedUserImages.dart';
import 'package:perspectives/myUtility.dart';

class PerspectiveContainer extends StatefulWidget {
  final String perspectiveImage;
  final String header;
  final String date;
  final String amountPeople;
  final Function() onTap;

  const PerspectiveContainer(
      {super.key,
      required this.perspectiveImage,
      required this.header,
      required this.date,
      required this.amountPeople, required this.onTap});

  @override
  State<PerspectiveContainer> createState() => _PerspectiveContainerState();
}

class _PerspectiveContainerState extends State<PerspectiveContainer> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        width: MyUtility(context).width * 0.92,
        height:  MyUtility(context).height * 0.25,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            25,
          ),
          image: DecorationImage(
              image: AssetImage(widget.perspectiveImage), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                widget.header,
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                widget.date,
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  StackedUserImages(),
                  Text(
                    '${widget.amountPeople} People',
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
