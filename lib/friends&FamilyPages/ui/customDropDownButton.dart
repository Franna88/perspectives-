import 'package:flutter/material.dart';
import 'package:perspectives/CommonUi/mainHeaderText.dart';

class CustomDropDownButton extends StatefulWidget {
  final String buttonText;
  final bool isOpen;
  final Widget dropdownContent;
  final Function() onTap;
  final Function() onTapTwo;
  const CustomDropDownButton(
      {super.key,
      required this.buttonText,
      required this.isOpen,
      required this.dropdownContent,
      required this.onTap,
      required this.onTapTwo});

  @override
  State<CustomDropDownButton> createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onSecondaryTap: widget.onTapTwo,
          onTap: widget.onTap,
          child: Row(
            children: [
              MainHeaderText(text: widget.buttonText),
              Icon(
                widget.isOpen == true
                    ? Icons.arrow_drop_down
                    : Icons.arrow_drop_up,
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        if (widget.isOpen)
          Align(
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [widget.dropdownContent],
            ),
          ),
      ],
    );
  }
}
