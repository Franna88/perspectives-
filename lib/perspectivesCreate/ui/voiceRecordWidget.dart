import 'dart:async';
import 'package:flutter/material.dart';
import 'package:perspectives/constants/myColors.dart';




class VoiceRecordWidget extends StatefulWidget {
  @override
  _VoiceRecordWidgetState createState() => _VoiceRecordWidgetState();
}

class _VoiceRecordWidgetState extends State<VoiceRecordWidget> {
  static const int maxDuration = 60; // max duration in seconds
  int currentTime = maxDuration; // current countdown time
  Timer? timer;
  bool isPaused = false;

  // Start or resume the timer
  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (Timer t) {
      if (!isPaused && currentTime > 0) {
        setState(() {
          currentTime--;
        });
      }
    });
  }

  // Pause the timer
  void pauseTimer() {
    setState(() {
      isPaused = true;
    });
  }

  // Resume the timer
  void resumeTimer() {
    setState(() {
      isPaused = false;
    });
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  // Formatting the timer display
  String formatTime(int seconds) {
    final minutes = seconds ~/ 60;
    final remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Countdown Text
            Text(
              formatTime(currentTime),
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.teal),
            ),
            SizedBox(height: 25),
            
            // Circular Pause Button
            GestureDetector(
              onTap: isPaused ? resumeTimer : pauseTimer,
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.teal.withOpacity(0.2),
                ),
                child: Icon(
                  isPaused ? Icons.play_arrow : Icons.pause,
                  color: Colors.black,
                  size: 36,
                ),
              ),
            ),
            SizedBox(height: 20),

            // Progress Indicator (Slider)
            Slider(
              value: (maxDuration - currentTime).toDouble(),
              max: maxDuration.toDouble(),
              min: 0,
              activeColor: MyColors().teal,
              inactiveColor: Colors.grey,
              onChanged: (value) {},
            ),
          ],
        ),
      );
   
  }
}