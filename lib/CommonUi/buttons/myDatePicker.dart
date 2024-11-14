import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:perspectives/constants/myColors.dart';


class MyDatePicker extends StatefulWidget {
  final String hintText;
  final double width;
  final String description;
  final TextEditingController textfieldController;
  final Function refresh;
  MyDatePicker(
      {super.key,
      required this.textfieldController,
      required this.hintText,
      required this.refresh,
      required this.description,
      required this.width});

  @override
  State<MyDatePicker> createState() => _MyDatePickerState();
}

class _MyDatePickerState extends State<MyDatePicker> {
  @override
  Widget build(BuildContext context) {
    //Select a date popup
    openDatePicker({required BuildContext context}) async {
      DateTime? pickedDate = await showDatePicker(
        context: context,
        lastDate: DateTime(2026),
        firstDate: DateTime(1900),
        initialDate: DateTime.now(),
      );
      if (pickedDate == null) return;
      DateFormat('yyyy-MM-dd').format(pickedDate);
      widget.textfieldController.text =
          DateFormat('yyyy-MM-dd').format(pickedDate);
      widget.refresh!();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        Container(
          width: widget.width,
          height: 50,
          decoration: BoxDecoration(
            color: MyColors().fillColor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: MyColors().teal,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: TextField(
              //Text controller
              controller: widget.textfieldController,
              /////
              readOnly: true,
              decoration: InputDecoration(
                focusColor: MyColors().teal,
                  border: InputBorder.none, hintText: widget.hintText),
              onTap: () => openDatePicker(context: context),
            ),
          ),
        ),
      ],
    );
  }
}
