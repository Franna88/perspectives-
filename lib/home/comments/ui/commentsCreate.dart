import 'package:flutter/material.dart';

import '../../../constants/myColors.dart';
import '../../../myUtility.dart';

class CommentCreate extends StatefulWidget {
  const CommentCreate({super.key});

  @override
  State<CommentCreate> createState() => _CommentCreateState();
}

class _CommentCreateState extends State<CommentCreate> {
  @override
  Widget build(BuildContext context) {
    return Container(
                    height: 70,
                    width: MyUtility(context).width,
                    color: Color.fromARGB(255, 255, 255, 255),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 40,
                            width: MyUtility(context).width * 0.75,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 221, 221, 221),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 10, left: 10),
                              child: TextField(
                                decoration:
                                    InputDecoration(border: InputBorder.none),
                              ),
                            ),
                          ),
                          Container(
                            decoration: ShapeDecoration(
                              color: MyColors().teal,
                              shape: CircleBorder(),
                            ),
                            child: IconButton(
                              color: Colors.white,
                              onPressed: () {},
                              icon: Icon(Icons.send),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
  }
}