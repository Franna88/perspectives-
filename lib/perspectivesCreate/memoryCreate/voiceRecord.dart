import 'package:flutter/material.dart';
import 'package:perspectives/CommonUi/buttons/ButtonStyleLong.dart';
import 'package:perspectives/CommonUi/buttons/smallButton.dart';
import 'package:perspectives/myUtility.dart';
import 'package:perspectives/perspectivesCreate/ui/topnavbar.dart';
import 'package:perspectives/perspectivesCreate/ui/voiceRecordWidget.dart';

class VoiceRecord extends StatefulWidget {
  const VoiceRecord({super.key});

  @override
  State<VoiceRecord> createState() => _VoiceRecordState();
}

class _VoiceRecordState extends State<VoiceRecord> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          TopNavBar(
              title: 'Voice Record your Memory',
              description:
                  'Record your memory and add a backgrounf image to complete this perspective',
              imagePath: 'images/voice.png'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              //color: Colors.amber,
              height: MyUtility(context).height * 0.65,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    ButtonStyleLong(
                        buttonText: 'Add Background Image', onTap: () {}),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: MyUtility(context).height * 0.15,
                      width: MyUtility(context).width,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/imgPlaceHolder.png'),
                            fit: BoxFit.cover),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    VoiceRecordWidget(),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ButtonStyleLong(
                          buttonText: 'Redo',
                          onTap: () {},
                          buttonWidht: 100,
                          fontWeight: FontWeight.bold,
                          buttonHeight: 12,
                        ),
                        ButtonStyleLong(
                          buttonText: 'Complete',
                          onTap: () {},
                          buttonWidht: 120,
                          fontWeight: FontWeight.bold,
                          buttonHeight: 12,
                        ),
                      ],
                    ),
                     const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
