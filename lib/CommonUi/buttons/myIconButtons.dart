import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perspectives/constants/myColors.dart';

import '../../myUtility.dart';

class MyIconButtons extends StatefulWidget {
  final String buttonText;
  final Function() onTap;
  final FontWeight? fontWeight;
  final double? fontSize;
  final IconData icon;
  final double? buttonHeight;
  const MyIconButtons({
    super.key,
    required this.buttonText,
    required this.onTap,
    this.fontWeight,
    this.fontSize, required this.icon, this.buttonHeight,
  });

  @override
  State<MyIconButtons> createState() => _MyIconButtonsState();
}

class _MyIconButtonsState extends State<MyIconButtons> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 4,
            spreadRadius: 0, // Reduced from 1 to 0
            offset: Offset(0, 4), // Changed from Offset(0, 3) to Offset(0, 4)
          ),
        ],
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
            padding: EdgeInsets.symmetric(vertical: widget.buttonHeight ?? 8, horizontal: MyUtility(context).height < 845 ? 8 : 15),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.buttonText,
                  style: GoogleFonts.inter(
                      fontSize: widget.fontSize ??  18,
                      color: Colors.white,
                      letterSpacing: 1.1,
                      fontWeight: widget.fontWeight ?? FontWeight.w500),
                ),
                Container(
                  height: MyUtility(context).height < 845 ? 30 : 40,
                  width: MyUtility(context).height < 845 ? 30 : 40,
                  decoration: ShapeDecoration(
                    shadows: [
                      BoxShadow(
                        offset: Offset(0, 4),
                        blurRadius: 3,
                        spreadRadius: 1,
                        color: Color.fromARGB(97, 0, 0, 0)
                       
                      )
                    ],
                    color: Colors.white,
                    shape: CircleBorder(),
                  ),
                  child: Icon(
                    widget.icon,
                    color: MyColors().teal,
                    size: MyUtility(context).height < 845 ? 20 : 30,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
