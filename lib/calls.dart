import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'main_drawer.dart';

class calls extends StatelessWidget{
  final number = '+0123456789';
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("CALL FOR HELP"),
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
                      "Call to Majlis Eksekutif Pelajar(MEP). ",
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
                      child: new Image.asset('assets/phone.jpg'),
                      alignment: Alignment.center,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 140, vertical: 12),
                        textStyle: TextStyle(fontSize: 24),
                      ),
                      child: Text('Call'),
                      onPressed: ()async{
                        launch('tel://$number');
                      },
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