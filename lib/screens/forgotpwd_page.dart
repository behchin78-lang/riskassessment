import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ForgotPasswordPage extends StatefulWidget{
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage>{
  final _emailController = TextEditingController();

  @override
  void dispose(){
    _emailController.dispose();
    super.dispose();
  }

  Future emailSubmitToReset() async{
    try{
      await FirebaseAuth.instance.sendPasswordResetEmail(email: _emailController.text.trim());
      showDialog(
          context: context,
          builder:(context){
            return AlertDialog(
              content: Text('Reset password link sent!! Check your email to reset it'),
            );
          }
      );
    } on FirebaseAuthException catch (e){
      print(e);
      showDialog(
        context: context,
        builder:(context){
          return AlertDialog(
            content: Text(e.message.toString()),
          );
        }
      );
    }
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.blue[200],
        elevation: 10,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Enter your email and we will send a password \nreset link to reset your password',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 17),
            ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:25.0),
            child: TextField(
              controller: _emailController,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide:BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color:Colors.lightBlueAccent),
                  borderRadius: BorderRadius.circular(12),
                ),
                hintText: 'Email',
                fillColor: Colors.blue[100],
                filled: true,
              ),
            ),
          ),
            SizedBox(height: 10),
            MaterialButton(
                onPressed: emailSubmitToReset,
              child: Text('Submit'),
              color: Colors.blue[300],
            ),
          ],
      ),
    );
  }
}