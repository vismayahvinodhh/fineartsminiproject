import 'package:fineartsproject/main.dart';
import 'package:fineartsproject/miniprojectmodule1/Adminassignpage.dart';
import 'package:fineartsproject/miniprojectmodule1/Admineventaddpage.dart';
import 'package:fineartsproject/miniprojectmodule1/Admineventpage.dart';
import 'package:fineartsproject/miniprojectmodule1/Adminhomepage.dart';
import 'package:fineartsproject/miniprojectmodule1/Adminlogin.dart';
import 'package:fineartsproject/miniprojectmodule1/Adminnavigationpage.dart';
import 'package:fineartsproject/miniprojectmodule1/Adminorganiserpage2.dart';
import 'package:fineartsproject/miniprojectmodule1/Adminorganizerassignpage.dart';
import 'package:fineartsproject/miniprojectmodule1/Adminorganizerpage.dart';
import 'package:fineartsproject/miniprojectmodule1/Adminstudentdetailpage.dart';
import 'package:fineartsproject/miniprojectmodule1/Adminthemepage.dart';
import 'package:fineartsproject/miniprojectmodule2/Organiseraddrsltpage.dart';
import 'package:fineartsproject/miniprojectmodule2/Organisernavigationpage.dart';
import 'package:fineartsproject/miniprojectmodule2/Organiserthemepage.dart';
import 'package:fineartsproject/miniprojectmodule2/Organizerappealdetailspage.dart';
import 'package:fineartsproject/miniprojectmodule2/Organizerappealpage.dart';
import 'package:fineartsproject/miniprojectmodule2/Organizerassignpage.dart';
import 'package:fineartsproject/miniprojectmodule2/Organizerediteventpage.dart';
import 'package:fineartsproject/miniprojectmodule2/Organizereventdetailspage.dart';
import 'package:fineartsproject/miniprojectmodule2/Organizereventpartcpantpag.dart';
import 'package:fineartsproject/miniprojectmodule2/Organizerloginpage.dart';
import 'package:fineartsproject/miniprojectmodule2/Organizerregistrationpage.dart';
import 'package:fineartsproject/miniprojectmodule2/Organizerupdatersltpage.dart';
import 'package:fineartsproject/miniprojectmodule3/Studentloginpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (context, child) =>
     MaterialApp(debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(

          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Student_login(),
      ),
    );
  }
}
