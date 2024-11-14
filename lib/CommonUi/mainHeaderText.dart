import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainHeaderText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? textColor;
  final TextAlign? textAlign;
  const MainHeaderText(
      {super.key,
      required this.text,
      this.textColor,
      this.textAlign,
      this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.montserrat(
          fontSize: fontSize ?? 20,
          fontWeight: FontWeight.bold,
          color: textColor),
    );
  }
}
