import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'assessment.dart';
import 'calls.dart';
import 'main1.dart';
import 'package:riskassessment/profile.dart';


class MainDrawer extends StatelessWidget{
  Widget build(BuildContext context){
    return Drawer(
      child: Column(
        children: <Widget> [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width:100,
                    height: 100,
                    margin: EdgeInsets.only(
                      top: 30,
                      bottom: 10,
                    ),
                  ),
                  Text(
                    'Welcome',
                    style: TextStyle(
                      fontSize: 22, color:Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.question_answer),
            title: Text(
              'Start Assessment',
              style: TextStyle(
                fontSize:18,
              ),
            ),
            onTap: (){
              Navigator.of(context).overlay;
              Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> AssessmentPage()
             ));
            },
          ),
          ListTile(
            leading: Icon(Icons.call),
            title: Text(
              "Call for help",
              style: TextStyle(
                fontSize:18,
              ),
            ),
            onTap: (){
              Navigator.of(context).overlay;
              Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> calls()
              ));
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text(
              'Profile',
              style: TextStyle(
                fontSize:18,
              ),
            ),
            onTap: (){
              Navigator.of(context).overlay;
              Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> ProfilePage()
              ));
            },
          ),
          ListTile(
            leading: Icon(Icons.arrow_back),
            title: Text(
              'Logout',
              style: TextStyle(
                fontSize:18,
              ),
            ),
            onTap: (){
              Navigator.of(context).overlay;
              Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> LoginPage()
              ));
            },
          ),
        ],
      ),
    );
  }
}