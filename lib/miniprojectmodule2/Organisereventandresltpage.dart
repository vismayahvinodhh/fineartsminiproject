
import 'package:fineartsproject/miniprojectmodule2/Organiseraddrsltpage.dart';
import 'package:fineartsproject/miniprojectmodule2/Organizereventdetailspage.dart';
import 'package:fineartsproject/miniprojectmodule2/Organizereventpartcpantpag.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Organizer_event_and_result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Stack(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 29, right: 29),
                  child: Container(
                    width: 450,
                    height: 49,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(34, 118, 187, 0.44),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                TabBar(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(253, 190, 64, 1),
                  ),
                  tabs: [
                    Tab(
                      child: Text(
                        'Event',
                        style: TextStyle(
                          // color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Result',
                        style: TextStyle(
                          // color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
              Expanded(
                child: TabBarView(
                  children: [
                    Event(), // Call the first class
                    Result(),
                    // Call the second class
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

class Event extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 10, left: 30, right: 30),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Organizer_event_participants_list();
                      },
                    ));
                  },
                  child: Container(
                      height: 45,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(85, 141, 187, 1),
                          border: Border.all(
                              color: Color.fromRGBO(85, 141, 187, 1)),
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Kuchupudi",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      )),
                ),
              );
            }));
  }
}

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: FloatingActionButton(
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
                  return Organizer_add_result();
                },
              ));
            },
          ),
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Organizer_event_detail();
                },));
              },
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Card(
                      shadowColor: Colors.black,
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: BorderSide(color: Colors.black, width: 0.5)),
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/gallery.png"),
                                      fit: BoxFit.cover)),
                            ),
                            Text(
                              "            Mohiniyattam",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30 ,bottom: 10),
                    child: Card(
                      shadowColor: Colors.black,
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: BorderSide(color: Colors.black, width: 0.5)),
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/gallery.png"),
                                      fit: BoxFit.cover)),
                            ),
                            Text(
                              "            Kolkali",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ));
  }
}