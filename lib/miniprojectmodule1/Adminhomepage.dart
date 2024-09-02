import 'package:flutter/material.dart';

import 'Adminstudentdetailpage.dart';

class Admin_home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Center(child: Text("Student List",style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 22),)),),
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
            child: InkWell(

              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Admin_student_detail();
                },));
              },
              child: Card(


                shadowColor: Colors.black,
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: BorderSide(
                        color: Colors.black,
                        width: 0.5
                    )
                ),

                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/user.png"),fit: BoxFit.cover
                            )),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Name",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(width: 18,),
                              Text(
                                "ID Number",
                                style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontSize: 15),
                              ),
                            ],
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
