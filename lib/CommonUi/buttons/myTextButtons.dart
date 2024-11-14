import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perspectives/constants/myColors.dart';

class MyTextButtons extends StatefulWidget {
  final Function() onTap;
  final String buttonText;
  final bool? isUnderlined;
  final bool? isBold;
  const MyTextButtons(
      {super.key,
      required this.onTap,
      required this.buttonText,
      this.isUnderlined,
      this.isBold});

  @override
  State<MyTextButtons> createState() => _MyTextButtonsState();
}

class _MyTextButtonsState extends State<MyTextButtons> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.onTap,
      child: Text(
        widget.buttonText,
        style: GoogleFonts.abel(
          letterSpacing: 1.1,
            fontWeight:
                widget.isBold == true ? FontWeight.bold : FontWeight.normal,
            color: MyColors().teal,
            decorationThickness: 2.5,
            decoration:
                widget.isUnderlined == true ? TextDecoration.underline : null,
            decorationColor: MyColors().teal),
            
      ),
    );
  }
}
