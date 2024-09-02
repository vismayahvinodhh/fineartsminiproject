
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Admineventaddpage.dart';

class Admin_event extends StatefulWidget {
  Admin_event({super.key});

  @override
  State<Admin_event> createState() => _Admin_eventState();
}

class _Admin_eventState extends State<Admin_event> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Center(
            child: Text(
              "Event",
              style: TextStyle(
                  color: Colors.black, fontWeight: FontWeight.w500, fontSize: 22),
            )),
      ),
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(
            side: BorderSide(color: Color.fromRGBO(253, 190, 64, 1), width: 2)),
        backgroundColor: Color.fromRGBO(253, 190, 64, 1),
        child: Icon(
          Icons.add,
          size: 40,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return Admin_event_add();
            },
          ));
        },
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: Column(
          children: [
            Row(
              children: [
                InkWell(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Admin_event_add();
                  },));
                },
                  child: Container(
                    height: 140,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(85, 141, 187, 1),
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 8,
                        ),
                        Row(
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
                              width: 70,
                            ),
                            Icon(
                              CupertinoIcons.delete,
                              color: Colors.black,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Date   : 7/12/2023\n"
                                  "Time  : 10:00\n"
                                  "Stage : 3",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
