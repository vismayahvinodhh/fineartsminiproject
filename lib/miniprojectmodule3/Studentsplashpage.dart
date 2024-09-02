
import 'package:fineartsproject/miniprojectmodule3/Studentloginpage.dart';
import 'package:flutter/material.dart';

class Admin_splash extends StatefulWidget {
  const Admin_splash({super.key});

  @override
  State<Admin_splash> createState() => _Admin_splashState();
}

class _Admin_splashState extends State<Admin_splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return Student_login();
            },
          ));
        },
        child: Container(
          height: 900,
          width: 500,
          decoration: BoxDecoration(
              color: Colors.blue.shade900,
              image: DecorationImage(image: AssetImage("assets/theme.png"))),
        ),
      ),
    );
  }
}
