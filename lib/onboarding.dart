import 'package:flutter/material.dart';
import 'package:flutter_application_16_april/signin_signup.dart';

import 'constants.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBeigColor,
      body: Center(
        child: Column(
          children: [
            Image.asset("images/Logo.png", height: 95,),
            ElevatedButton(
              onPressed: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => SigninSignup()));
              }, 
              child: Text("JOIN"))
          ],
        )),
    );
  }
}