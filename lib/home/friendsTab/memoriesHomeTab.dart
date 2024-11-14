import 'package:flutter/material.dart';

import 'package:waterfall_flow/waterfall_flow.dart';

import '../../CommonUi/waterFallMediaCon.dart';
import '../../myUtility.dart';
import '../contentViewScreen/contentViewScreen.dart';
import '../models/waterfallMediaModel.dart';

class MemoriesHomeTab extends StatefulWidget {
  const MemoriesHomeTab({super.key});

  @override
  State<MemoriesHomeTab> createState() => _MemoriesHomeTabState();
}

class _MemoriesHomeTabState extends State<MemoriesHomeTab> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        //height: MyUtility(context).height * 0.51,
        width: MyUtility(context).width,
        child: CustomScrollView(
          slivers: [
            SliverWaterfallFlow(
              gridDelegate: SliverWaterfallFlowDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 5, crossAxisSpacing: 5),
              delegate:
                  SliverChildBuilderDelegate(childCount: memoryMedia.length,
                      (BuildContext contex, int index) {
                return WaterFallMediaCon(
                  onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ContentViewScreen()),
                              );
                            },
                    image: memoryMedia[index].image,
                    likes: memoryMedia[index].likes);
              }),
            ),
          ],
        ),
      ),
    );
  }
}
