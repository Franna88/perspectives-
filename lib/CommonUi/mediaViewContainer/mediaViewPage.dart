import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:perspectives/myUtility.dart';

class MediaViewPage extends StatefulWidget {
  final String coverImage;
  final Widget imageWidget;
  final Widget content;
  const MediaViewPage(
      {super.key,
      required this.coverImage,
      required this.imageWidget,
      required this.content});

  @override
  State<MediaViewPage> createState() => _MediaViewPageState();
}

class _MediaViewPageState extends State<MediaViewPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MyUtility(context).height,
      width: MyUtility(context).width,
      child: Stack(
        children: [
          Container(
            height: MyUtility(context).height * 0.35,
            width: MyUtility(context).width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.coverImage),
                fit: BoxFit.cover
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
              child: Container(
                decoration: new BoxDecoration(
                  color: Colors.white.withOpacity(0.0),
                ),
                child: Center(child: widget.imageWidget),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: MyUtility(context).height < 845 ? MyUtility(context).height * 0.61 : MyUtility(context).height * 0.65,
              width: MyUtility(context).width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: widget.content,
            ),
          ),
        ],
      ),
    );
  }
}
