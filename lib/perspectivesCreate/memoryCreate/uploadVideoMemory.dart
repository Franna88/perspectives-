import 'package:flutter/material.dart';

import '../../CommonUi/buttons/ButtonStyleLong.dart';
import '../../myUtility.dart';
import '../ui/topnavbar.dart';

class UploadVideoMemory extends StatefulWidget {
  final bool isSingleMemory;
  const UploadVideoMemory({super.key, required this.isSingleMemory});

  @override
  State<UploadVideoMemory> createState() => _UploadVideoMemoryState();
}

class _UploadVideoMemoryState extends State<UploadVideoMemory> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          TopNavBar(
              title: 'Upload your video Memory',
              description:
                  'Upload your video and add your image to complete this perspective',
              imagePath: 'images/video.png'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              //color: Colors.amber,
              height: MyUtility(context).height * 0.65,
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Visibility(
                    visible: widget.isSingleMemory == false,
                    child: ButtonStyleLong(
                        buttonText: 'Add Background Image', onTap: () {}),
                  ),
                  Visibility(
                    visible: widget.isSingleMemory == false,
                    child: const SizedBox(
                      height: 20,
                    ),
                  ),
                  Visibility(
                    visible: widget.isSingleMemory == false,
                    child: Container(
                      height: MyUtility(context).height * 0.15,
                      width: MyUtility(context).width,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/imgPlaceHolder.png'),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: widget.isSingleMemory == false,
                    child: const SizedBox(
                      height: 20,
                    ),
                  ),
                  ButtonStyleLong(
                      buttonText: 'Upload your Video', onTap: () {}),
                      const SizedBox(
                    height: 20,
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.center,
                    child: ButtonStyleLong(
                          buttonText: 'Complete',
                          onTap: () {},
                          buttonWidht: 150,
                          fontWeight: FontWeight.bold,
                          buttonHeight: 12,
                        ),
                  ),
                   const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
