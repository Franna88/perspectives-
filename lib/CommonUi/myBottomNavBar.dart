import 'package:flutter/material.dart';

import '../constants/myColors.dart';

class MyBottomNavBar extends StatefulWidget {
  final Function(int) onTap;
  final int currentIndex;
  const MyBottomNavBar({super.key, required this.onTap, required this.currentIndex});

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
        ),
        child: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          //fixedColor: Colors.white,
          elevation: 8,
          onTap: widget.onTap,
          currentIndex: widget.currentIndex,
          backgroundColor: Colors.white,
          selectedItemColor: MyColors().teal,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.people_alt_outlined), label: 'People'),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_box_outlined), label: 'New'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'images/journal.png',
                  color: widget.currentIndex == 3 ? MyColors().teal : Colors.grey,
                  height: 20,
                ),
                label: 'Journal'),
            BottomNavigationBarItem(
              icon: Container(
                decoration: ShapeDecoration(
                    color: MyColors().teal, shape: CircleBorder()),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Center(
                    child: CircleAvatar(
                      radius: 15,
                      backgroundImage: AssetImage('images/avatar4.jpg'),
                      backgroundColor: MyColors().teal,
                    ),
                  ),
                ),
              ),
              label: '',
            ),
          ],
        ),
      );
  }
}