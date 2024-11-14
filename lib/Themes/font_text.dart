import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontText {
  BuildContext context;
  FontText(this.context);
  double get width => MediaQuery.of(context).size.width;
  TextStyle get headingLarge => GoogleFonts.montserrat(
        color: Colors.black,
        fontSize: width / 40,
        fontWeight: FontWeight.bold,
      );

  TextStyle get headingLargeWhite => GoogleFonts.montserrat(
        color: Colors.white,
        fontSize: width / 15,
        fontWeight: FontWeight.w600,
      );

  // TextStyle get bodyMediumBlack => GoogleFonts.montserrat(
  //       color: Colors.black,
  //       fontSize: width < 600 ? 16 : width / 60,
  //       fontWeight: FontWeight.bold,
  //     );

  TextStyle get bodySmallGrey => GoogleFonts.montserrat(
        color: Colors.black.withOpacity(0.4),
        fontSize: width / 30,
        fontWeight: FontWeight.w700,
      );

  TextStyle get bodySmallBlackBold => GoogleFonts.montserrat(
        color: Colors.black,
        fontSize: width / 26,
        fontWeight: FontWeight.bold,
      );

  TextStyle get bodySmallWhite => GoogleFonts.montserrat(
        color: Colors.white,
        fontSize: width / 30,
        fontWeight: FontWeight.w600,
      );

  TextStyle get bodyMediumWhite => GoogleFonts.montserrat(
        color: Colors.white,
        fontSize: width / 22,
        fontWeight: FontWeight.w600,
      );

  static TextStyle defaultStyle({
    Color color = Colors.black,
    double fontSize = 10,
    FontWeight fontWeight = FontWeight.normal,
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
    );
  }
}
