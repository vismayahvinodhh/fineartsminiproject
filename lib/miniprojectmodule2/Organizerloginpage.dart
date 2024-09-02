
import 'package:fineartsproject/miniprojectmodule2/Organisernavigationpage.dart';
import 'package:fineartsproject/miniprojectmodule2/Organizerregistrationpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Organizer_login extends StatefulWidget {
  Organizer_login({super.key});

  @override
  State<Organizer_login> createState() => _Organizer_loginState();
}

class _Organizer_loginState extends State<Organizer_login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(right: 30, left: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 150,
              ),
              Container(
                height: 110,
                width: 110,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/theme.png"),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: Color.fromRGBO(32, 69, 99, 1)),
                  )),
              SizedBox(
                height: 50,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            CupertinoIcons.person_solid,
                            color: Colors.grey,
                          ),
                          hintText: 'Usernames',
                          focusColor: Colors.white,
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(5)),
                          fillColor: Colors.white,
                          filled: true),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.grey,
                          ),
                          hintText: 'Password',
                          focusColor: Colors.white,
                          border: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.grey, width: 2),
                              borderRadius: BorderRadius.circular(5)),
                          fillColor: Colors.white,
                          filled: true),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Organizer_navigation();
                      },
                    ));
                  },
                  child: Container(
                    height: 55,
                    width: 330,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(32, 69, 99, 1),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Organizer_registration();
                      },
                    ));
                  },
                  child: Text(
                    "Create New Account",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromRGBO(32, 69, 99, 1),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}