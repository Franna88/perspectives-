import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perspectives/eventCreate/createEvent.dart';
import 'package:perspectives/eventCreate/createEventDate.dart';
import 'package:perspectives/home/contentViewScreen/iu/dragableContainer.dart';
import 'package:perspectives/CommonUi/mainHeaderText.dart';
import 'package:perspectives/CommonUi/stackedUserImages.dart';
import 'package:perspectives/CommonUi/userAvatars.dart';
import 'package:perspectives/constants/myColors.dart';
import 'package:perspectives/home/perspectives/popup/perspectiveOptionsPopup.dart';
import 'package:perspectives/home/perspectivesHome.dart';
import 'package:perspectives/homePage.dart';

import 'package:perspectives/loginPages/login.dart';
import 'package:perspectives/myUtility.dart';
import 'package:perspectives/perspectivesCreate/memoryCreate/chooseMemoryFormat.dart';
import 'package:perspectives/perspectivesCreate/memoryCreate/imageMemoryUpload.dart';
import 'package:perspectives/perspectivesCreate/pages/addFriends.dart';
import 'package:perspectives/perspectivesCreate/pages/chooseMemoryType.dart';
import 'package:perspectives/perspectivesCreate/pages/memoryDetails.dart';
import 'package:perspectives/perspectivesCreate/memoryCreate/uploadVideoMemory.dart';
import 'package:perspectives/perspectivesCreate/memoryCreate/voiceRecord.dart';
import 'package:perspectives/perspectivesCreate/pages/perspectiveBackgroundImage.dart';

import 'home/contentViewScreen/contentViewScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAaNUIEDE5yJs_CIJr07GZwzT8ipDtLfY0",
            authDomain: "perspectives-a77f1.firebaseapp.com",
            projectId: "perspectives-a77f1",
            storageBucket: "perspectives-a77f1.firebasestorage.app",
            messagingSenderId: "1012343008916",
            appId: "1:1012343008916:web:c405e0ea9aa9d9f0498e81",
            measurementId: "G-1MGZ8MFZWE"));
  } else {
    await Firebase.initializeApp();
  }

  runApp(
    const MaterialApp(
        home: Scaffold(
      body:
          //CreateEventDate()
          //CreateEvent()
          // ImageMemoryUpload()
          //AddFriends()
          //PerspectiveBackgroundImage()
          //UploadVideoMemory(isSingleMemory: false)
          //VoiceRecord()
          // ChooseMemoryFormat()
          //MemoryDetails()
          //
          //ContentViewScreen())
          //PerspectiveOptionsPopup()
          HomePage(
        pageIndex: 0,
      ),
    )),
  );
}
