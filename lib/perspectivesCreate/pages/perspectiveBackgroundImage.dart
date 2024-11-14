import 'package:flutter/material.dart';

import '../../CommonUi/buttons/ButtonStyleLong.dart';
import '../../myUtility.dart';
import '../ui/topnavbar.dart';

class PerspectiveBackgroundImage extends StatefulWidget {
  const PerspectiveBackgroundImage({super.key});

  @override
  State<PerspectiveBackgroundImage> createState() => _PerspectiveBackgroundImageState();
}

class _PerspectiveBackgroundImageState extends State<PerspectiveBackgroundImage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TopNavBar(
            title: 'Add Background Image',
            description:
                'Add a background image for this Perspective',
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
                
                Container(
                  height: MyUtility(context).height * 0.25,
                  width: MyUtility(context).width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/imgPlaceHolder.png'),
                        fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ButtonStyleLong(
                    buttonText: 'Add Background Image', onTap: () {}),
                    const SizedBox(
                  height: 20,
                ),
                Spacer(),
                Align(
                  alignment: Alignment.centerRight,
                  child: ButtonStyleLong(
                        buttonText: 'Continue',
                        onTap: () {},
                       // buttonWidht: 120,
                        fontWeight: FontWeight.bold,
                        buttonHeight: 12,
                      ),
                ),
                 const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}