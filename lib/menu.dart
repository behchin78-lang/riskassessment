import 'package:flutter/material.dart';
import 'main_drawer.dart';

class menu extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("MENU"),
      ),
      drawer: MainDrawer(),
      body: Container(
        width: double.infinity,
        child: Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(32),
                child: SingleChildScrollView( child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome to Access to Risk App. ",
                      style: TextStyle(
                          fontSize: 18,
                          height: 1.2,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w900,
                          color: Colors.blueGrey[300]),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Container(
                      color: Colors.grey[200],
                      child: new Image.asset('assets/risk.jpg'),
                      alignment: Alignment.center,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Start Assessment",
                      style: TextStyle(
                          fontSize: 18,
                          height: 1.2,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w900,
                          color: Colors.blueAccent),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: Colors.grey[200],
                      child: new Image.asset('assets/phone.jpg'),
                      alignment: Alignment.center,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Call for help",
                      style: TextStyle(
                          fontSize: 18,
                          height: 1.2,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w900,
                          color: Colors.blueAccent),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: Colors.grey[200],
                      child: new Image.asset('assets/profile.png'),
                      alignment: Alignment.center,
                    ),
                    Text(
                      "Profile",
                      style: TextStyle(
                          fontSize: 18,
                          height: 1.2,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w900,
                          color: Colors.blueAccent),
                    ),
                  ],
                ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}