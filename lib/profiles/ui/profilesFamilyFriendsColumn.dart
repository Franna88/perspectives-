import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../myUtility.dart';

class ProfilesFamilyFriensColumn extends StatelessWidget {
  final Function() onTap;
  final Function() friendsOnTap;
  
  final String frirndsAmount;
  const ProfilesFamilyFriensColumn(
      {super.key,  required this.frirndsAmount, required this.onTap, required this.friendsOnTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MyUtility(context).height < 850 ? MyUtility(context).width * 0.598 : MyUtility(context).width * 0.65,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          
          InkWell(
            onTap: friendsOnTap,
            child: Column(
              children: [
                Text(
                  'Friends',
                  style: GoogleFonts.montserrat(
                      fontSize: MyUtility(context).height < 850 ? 12 :  14, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  frirndsAmount,
                  style: GoogleFonts.montserrat(
                      fontSize: MyUtility(context).height < 850 ? 13 : 14, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Spacer(),
          InkWell(
            onTap: onTap,
            child: Container(
              height: MyUtility(context).height < 850 ?35 : 40,
              width:  MyUtility(context).height < 850 ?35 : 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(30, 172, 146, 1),
                    Color.fromRGBO(35, 144, 143, 1),
                  ],
                ),
              ),
              child: Icon(
                Icons.diversity_1,
                color: Colors.white, size: MyUtility(context).height < 850 ? 20 : 25 ,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
