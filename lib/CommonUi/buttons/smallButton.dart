import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/myColors.dart';

class SmallButton extends StatefulWidget {
  final double width;
  final String buttonText;
  final Function() onTap;
  const SmallButton({super.key, required this.buttonText, required this.width, required this.onTap});

  @override
  State<SmallButton> createState() => _SmallButtonState();
}

class _SmallButtonState extends State<SmallButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: 30,
        width: widget.width,
        decoration: BoxDecoration(
            color: MyColors().teal, borderRadius: BorderRadius.circular(5)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Center(
            child: Text(
              widget.buttonText,
              style: GoogleFonts.montserrat(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
