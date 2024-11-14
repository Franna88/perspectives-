import 'package:flutter/material.dart';
import 'package:perspectives/constants/myColors.dart';
import 'package:perspectives/home/models/singleMemoryModel.dart';
import 'package:perspectives/home/singleMemorys/ui/singleMemoryHomeCon.dart';
import 'package:perspectives/myUtility.dart';

class SingleMemoryList extends StatefulWidget {
  const SingleMemoryList({super.key});

  @override
  State<SingleMemoryList> createState() => _SingleMemoryListState();
}

class _SingleMemoryListState extends State<SingleMemoryList> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MyUtility(context).height * 0.20,
        width: MyUtility(context).width,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: singleMemories.length,
          itemBuilder: (context, index) {
            return SingleMemoryHomeCon(
              userAvatar: singleMemories[index].userAvatar,
              username: singleMemories[index].username,
              content: singleMemories[index].content,
            );
          },
          separatorBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 10, left: 8, right: 8),
              child: Material(
                elevation: 6,
                borderRadius: BorderRadius.circular(25),
                child: Container(
                   height: MyUtility(context).height * 0.18,
                  width: MyUtility(context).height < 850 ? 100 : 140,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 5),
                      child: Icon(
                        Icons.add_box_outlined,
                        color: MyColors().teal,
                      )),
                ),
              ),
            );
          },
        ));
  }
}
