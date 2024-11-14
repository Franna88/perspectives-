import 'package:flutter/material.dart';
import 'package:perspectives/CommonUi/buttons/imageButtons.dart';
import 'package:perspectives/perspectivesCreate/memoryCreate/imageMemoryUpload.dart';
import 'package:perspectives/perspectivesCreate/memoryCreate/uploadVideoMemory.dart';
import 'package:perspectives/perspectivesCreate/memoryCreate/voiceRecord.dart';
import 'package:perspectives/perspectivesCreate/ui/topnavbar.dart';

import '../../myUtility.dart';

class ChooseMemoryFormat extends StatefulWidget {
  const ChooseMemoryFormat({super.key});

  @override
  State<ChooseMemoryFormat> createState() => _ChooseMemoryFormatState();
}

class _ChooseMemoryFormatState extends State<ChooseMemoryFormat> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          TopNavBar(
              title: 'Choose your memory format',
              description:
                  'Choose your memory format to continue to the next steps',
              imagePath: 'images/format.png'),
          SizedBox(
            height: MyUtility(context).height < 850 ? 25 : 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ImageButtons(
              buttonText: 'Image',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ImageMemoryUpload()),
                );
              },
              image: 'images/camera.png',
              fontSize: 22,
              fontWeight: FontWeight.bold,
              buttonHeight: 13,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ImageButtons(
              buttonText: 'Video',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const UploadVideoMemory(isSingleMemory: true)),
                );
              },
              image: 'images/video.png',
              fontSize: 22,
              fontWeight: FontWeight.bold,
              buttonHeight: 13,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ImageButtons(
              buttonText: 'Audio',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const VoiceRecord()),
                );
              },
              image: 'images/voice1.png',
              fontSize: 22,
              fontWeight: FontWeight.bold,
              buttonHeight: 13,
            ),
          )
        ],
      ),
    );
  }
}
