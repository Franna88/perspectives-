import 'package:flutter/material.dart';

import '../../CommonUi/buttons/ButtonStyleLong.dart';
import '../../myUtility.dart';
import '../ui/topnavbar.dart';

class ImageMemoryUpload extends StatefulWidget {
  const ImageMemoryUpload({super.key});

  @override
  State<ImageMemoryUpload> createState() => _ImageMemoryUploadState();
}

class _ImageMemoryUploadState extends State<ImageMemoryUpload> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          TopNavBar(
              title: 'Upload your image Memory',
              description:
                  'Upload your images to complete this perspective',
              imagePath: 'images/camera.png'),
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
                  ButtonStyleLong(
                      buttonText: 'Add Image', onTap: () {}),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: MyUtility(context).height * 0.20,
                    width: MyUtility(context).width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/imgPlaceHolder.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  
                  Spacer(),
                  Align(
                    alignment: Alignment.center,
                    child: ButtonStyleLong(
                          buttonText: 'Continue',
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