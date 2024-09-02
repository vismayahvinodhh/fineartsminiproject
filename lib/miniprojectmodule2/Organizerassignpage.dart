import 'package:fineartsproject/miniprojectmodule2/Organizerediteventpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Organizer_assign extends StatefulWidget {
  Organizer_assign({super.key});

  @override
  State<Organizer_assign> createState() => _Organizer_assignState();
}

class _Organizer_assignState extends State<Organizer_assign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
        ),
        backgroundColor: Colors.white,
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Card(
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 104.h,
                          width: 316.w,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(85, 141, 187, 1),
                              borderRadius: BorderRadius.circular(8)),
                          child: Stack(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 120,
                                    ),
                                    Text(
                                      "Mohiniyattam",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20),
                                    ),
                                    SizedBox(
                                      width: 70.w,
                                    ),
                                    Icon(
                                      CupertinoIcons.delete,
                                      color: Colors.black,
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 35),
                                    child: Text(
                                      "Date   : 7/12/2023\n"
                                          "Time  : 10:00\n"
                                          "Stage : 3",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18),
                                    ),
                                  ),
                                ],
                              ),
                              Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 70, left:335),
                                    child: IconButton(onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                                        return Organizer_edit_event();
                                      },));
                                    }, icon: Icon(Icons.edit_calendar_rounded,color: Colors.black,)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        ));
  }
}