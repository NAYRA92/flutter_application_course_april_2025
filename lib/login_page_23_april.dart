import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class LoginPage23April extends StatefulWidget {
  const LoginPage23April({super.key});

  @override
  State<LoginPage23April> createState() => _LoginPage23AprilState();
}

class _LoginPage23AprilState extends State<LoginPage23April> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 150,
                width: 150,
                color: Colors.amber,
              )
                  .animate()
                  .fade(
                      delay: Duration(seconds: 1), duration: Duration(seconds: 3))
                  .scale()
                  .shimmer(delay: Duration(seconds: 3)),
          
              //animated text kit
              SizedBox(
                width: 400.0,
                height: 300,
                child: TextLiquidFill(
                  text: 'LIQUIDY',
                  waveColor: Colors.blueAccent,
                  boxBackgroundColor: Colors.redAccent,
                  textStyle: TextStyle(
                    fontSize: 80.0,
                    fontWeight: FontWeight.bold,
                  ),
                  boxHeight: 300.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
