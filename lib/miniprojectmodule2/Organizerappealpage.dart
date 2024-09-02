import 'package:fineartsproject/miniprojectmodule2/Organizerappeallistpage.dart';
import 'package:fineartsproject/miniprojectmodule2/Organizerupdatersltpage.dart';
import 'package:flutter/material.dart';

class Organizer_appeal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: Center(child: Text("Appeal",style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 22),)),),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Organizer_appeal_list();
                    },
                  ));
                },
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
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: InkWell(

                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Organizer_update_result();
                    },
                  ));
                },
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
              ),
            )
          ],
        ));
  }
}