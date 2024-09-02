import 'package:fineartsproject/miniprojectmodule2/Organisernavigationpage.dart';
import 'package:fineartsproject/miniprojectmodule2/Organizerappealdetailspage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Organizer_appeal_list extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return Organizer_navigation();
                },
              ));
            },
            icon: Icon(CupertinoIcons.back)),
        backgroundColor: Colors.white,
        title: Text(
          "              Appeal List",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 20.sp),
        ),
      ),
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Organizer_appeal_details();
                  },
                ));
              },
              child: Card(
                shadowColor: Colors.black,
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(3.r),
                    side: BorderSide(color: Colors.black, width: 0.5)),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return Organizer_appeal_details();
                            },
                          ));
                        },
                        child: Container(
                          height: 35.h,
                          width: 35.h,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/gallery.png"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      Stack(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text(
                                  "Name",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 17.sp),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 25,left: 14),
                            child: Row(
                              children: [
                                Text(
                                  "ID Number",
                                  style: TextStyle(
                                      color: Colors.grey.shade600, fontSize: 14.sp),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12,left: 233),
                            child: Row(
                              children: [
                                Text(
                                  "Accepted",
                                  style: TextStyle(
                                      color: Colors.green, fontSize: 13.sp),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        // itemCount: 20,
      ),
    );
  }
}