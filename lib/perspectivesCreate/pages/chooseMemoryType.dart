import 'package:flutter/material.dart';
import 'package:perspectives/CommonUi/buttons/ButtonStyleLong.dart';
import 'package:perspectives/CommonUi/buttons/myIconButtons.dart';
import 'package:perspectives/myUtility.dart';
import 'package:perspectives/perspectivesCreate/memoryCreate/chooseMemoryFormat.dart';
import 'package:perspectives/perspectivesCreate/pages/memoryDetails.dart';
import 'package:perspectives/perspectivesCreate/ui/topnavbar.dart';

class ChooseMemoryType extends StatefulWidget {
  const ChooseMemoryType({super.key});

  @override
  State<ChooseMemoryType> createState() => _ChooseMemoryTypeState();
}

class _ChooseMemoryTypeState extends State<ChooseMemoryType> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TopNavBar(
            title: 'Choose your memory type',
            description:
                'Choose your memory type to continue to the next steps',
            imagePath: 'images/format.png'),
        SizedBox(
          height: MyUtility(context).height < 850 ? 25 : 40,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: MyIconButtons(
            buttonText: 'Perspective',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MemoryDetails()),
              );
            },
            icon: Icons.arrow_forward,
            buttonHeight: 15,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: MyIconButtons(
            buttonText: 'Memory',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MemoryDetails()),
              );
            },
            icon: Icons.arrow_forward,
            buttonHeight: 15,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: MyIconButtons(
            buttonText: 'Generational Memory',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MemoryDetails()),
              );
            },
            icon: Icons.arrow_forward,
            buttonHeight: 15,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        Spacer(),
        ButtonStyleLong(
          buttonText: 'Continue',
          onTap: () {},
          buttonWidht: MyUtility(context).width * 0.70,
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
