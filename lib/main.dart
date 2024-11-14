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

void main() {
  runApp(
    const MaterialApp(home: Scaffold(body: 
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
        HomePage(pageIndex: 0,),
        )
        ),
  );
}


