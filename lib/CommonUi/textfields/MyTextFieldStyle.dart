import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextFieldStyle extends StatefulWidget {
  final String labelText;
  
  final int? lines;
  final String textFieldType;
  final String? hintText;
  final TextEditingController textfieldController;

  const MyTextFieldStyle({
    super.key,
    required this.textfieldController,
    required this.labelText,
    
    this.lines,
    required this.textFieldType,
    this.hintText,
  });

  @override
  State<MyTextFieldStyle> createState() => _MyTextFieldStyleState();
}

class _MyTextFieldStyleState extends State<MyTextFieldStyle> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.black,
      maxLines: widget.lines ?? 1,
      validator: (value) {
        if (widget.textFieldType == "") {
          return null;
        }
        if (value == null || value.isEmpty && widget.textFieldType != "") {
          return 'Please enter a value';
        }

        if (num.tryParse(value) == null && widget.textFieldType == "intType") {
          return 'Please enter number value';
        }
        if ((value == null ||
                value.isEmpty ||
                !value.contains('@') ||
                !value.contains('.')) &&
            widget.textFieldType == "emailType") {
          return 'Invalid Email';
        }

        return null;
      },
      controller: widget.textfieldController,
      style: GoogleFonts.openSans(
        color: Color(0xFF6A6A6A),
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      
      decoration: InputDecoration(
        //prefixIcon: Icon(Icons.visibility),
        fillColor: Color.fromRGBO(241, 245, 249, 1), // Adjust fill color
        filled: true, // Ensure fill color is applied
        labelText: widget.labelText,
        labelStyle: TextStyle(color: Colors.grey,
        fontSize: 13),
        contentPadding: EdgeInsets.only(left: 12.0, top: 8,bottom: 8),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            color: Color.fromRGBO(30, 172, 146, 1),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            color: Color.fromRGBO(30, 172, 146, 1), // Color when focused
            width: 2.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            color: Color.fromRGBO(30, 172, 146, 1), // Color when enabled
            width: 1.5,
          ),
        ),
        hintText: widget.hintText,
        hintStyle: TextStyle(
          color: Color.fromARGB(255, 199, 199, 199),
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
