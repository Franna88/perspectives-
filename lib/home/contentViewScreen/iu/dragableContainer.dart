import 'dart:ui';

import 'package:flutter/material.dart';

class DragableContainer extends StatefulWidget {
  final Widget child;
  const DragableContainer({super.key, required this.child});

  @override
  State<DragableContainer> createState() => _DragableContainerState();
}

class _DragableContainerState extends State<DragableContainer> {
  final sheet = GlobalKey();
  final controller = DraggableScrollableController();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (builder, constraints) {
      return DraggableScrollableSheet(
        key: sheet,
        initialChildSize: 0.20,
        maxChildSize: 0.20,
        minChildSize: 0.025,
        expand: true,
        //snap: true,
        builder: (BuildContext context, ScrollController scrollController) {
          return Stack(children: <Widget>[
            Center(
              child: new ClipRect(
                child: new BackdropFilter(
                  filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: new Container(
                    //height: heightDevice * 0.76,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                        color: Colors.grey.shade200.withOpacity(0.3)),
                    child: new Center(
                      child: CustomScrollView(
                        controller: scrollController,
                        slivers: [
                          SliverToBoxAdapter(
                            child: widget.child,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ]);
        },
      );
    });
  }
}
