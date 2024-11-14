import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../myUtility.dart';

class MediaIconButtons extends StatefulWidget {
  final Widget child;
  const MediaIconButtons({super.key, required this.child});

  @override
  State<MediaIconButtons> createState() => _MediaIconButtonsState();
}

class _MediaIconButtonsState extends State<MediaIconButtons> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Center(
        child: new ClipRect(
          child: new BackdropFilter(
            filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: new Container(
              height: MyUtility(context).height < 850 ? 50 : 60,
              width: MyUtility(context).height < 850 ? 50 : 60,
              decoration: new BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color.fromARGB(255, 241, 241, 241).withOpacity(0.3)),
              child: new Center(child: widget.child),
            ),
          ),
        ),
      ),
    ]);
  }
}
