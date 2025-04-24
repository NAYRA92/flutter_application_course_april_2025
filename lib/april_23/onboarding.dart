import 'package:flutter/material.dart';
import 'package:flutter_application_16_april/april_23/signin_signup.dart';
import 'package:lottie/lottie.dart';

import '../constants.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    
    Future.delayed(Duration(seconds: 6 ), (){
       Navigator.push(context,
                MaterialPageRoute(
                  builder: (context) => SigninSignup()));
    });

    return Scaffold(
      backgroundColor: mainBeigColor,
      body: Center(
        child: Column(
          children: [
            Lottie.asset("images/cooking.json"),
            Image.asset("images/Logo.png", height: 95,),
            ElevatedButton(
              onPressed: (){
                Navigator.push(context,
                MaterialPageRoute(
                  builder: (context) => SigninSignup()));
              }, 
              child: Text("JOIN"))
          ],
        )),
    );
  }
}