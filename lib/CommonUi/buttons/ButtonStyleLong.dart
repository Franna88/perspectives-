import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonStyleLong extends StatefulWidget {
  final String buttonText;
  final Function() onTap;
  final FontWeight? fontWeight;
  final double? fontSize;
  final double? buttonWidht;
  final double? buttonHeight;
  const ButtonStyleLong(
      {super.key,
      required this.buttonText,
      required this.onTap,
      this.fontWeight, this.fontSize, this.buttonWidht, this.buttonHeight,
      });

  @override
  State<ButtonStyleLong> createState() => _ButtonStyleLongState();
}

class _ButtonStyleLongState extends State<ButtonStyleLong> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: widget.buttonWidht,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(30, 172, 146, 1),
              Color.fromRGBO(35, 144, 143, 1),
            ],
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: widget.buttonHeight ?? 18),
            child: Text(
              widget.buttonText,
              style: GoogleFonts.inter(
                  fontSize: widget.fontSize ?? 15,
                  color: Colors.white,
                  letterSpacing: 1.1,
                  fontWeight: widget.fontWeight ?? FontWeight.w500),
            ),
          ),
        ),
      ),
    );
  }
}
