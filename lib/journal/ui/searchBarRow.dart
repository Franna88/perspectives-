import 'package:flutter/material.dart';
import 'package:perspectives/CommonUi/buttons/smallButton.dart';
import 'package:perspectives/constants/myColors.dart';
import 'package:perspectives/journal/pages/newJournal.dart';
import 'package:perspectives/myUtility.dart';

class SearchBarRow extends StatelessWidget {
  final TextEditingController textController;
  final String hintText;
  const SearchBarRow({required this.textController, required this.hintText, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: MyUtility(context).width * 0.55,
          height: 40,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  offset: const Offset(12, 26),
                  blurRadius: 50,
                  spreadRadius: 0,
                  color: Colors.grey.withOpacity(.1)),
            ]),
            child: TextField(
             controller: textController,
              onChanged: (value) {
                //Do something wi
              },
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.search, color: MyColors().teal,),
                filled: true,
                fillColor: Colors.white,
                hintText: hintText,
                hintStyle: const TextStyle(color: Colors.grey),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 66, 66, 66), width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
              ),
            ),
        ),
        SmallButton(buttonText: 'New Journal', width: 110, onTap: (){
          Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const NewJournal()),
  );
        })
      ],
    );
  }
}