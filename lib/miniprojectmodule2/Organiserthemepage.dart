
import 'package:fineartsproject/miniprojectmodule2/Organizerloginpage.dart';
import 'package:flutter/material.dart';

class Organizerthemepage extends StatefulWidget {
  const Organizerthemepage({super.key});

  @override
  State<Organizerthemepage> createState() => _OrganizerthemepageState();
}

class _OrganizerthemepageState extends State<Organizerthemepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: InkWell(onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return Organizer_login();
      },));
    },
      child: Container(height: 900,width: 500,
        decoration: BoxDecoration(color:Colors.blue.shade900,image: DecorationImage(image: AssetImage("assets/theme.png"))),),
    ),);
  }
}