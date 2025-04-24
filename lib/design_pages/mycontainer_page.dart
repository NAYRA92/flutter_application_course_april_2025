import 'package:flutter/material.dart';
import 'package:flutter_application_16_april/constants.dart';

class MycontainerPage extends StatefulWidget {
  const MycontainerPage({super.key});

  @override
  State<MycontainerPage> createState() => _MycontainerPageState();
}

class _MycontainerPageState extends State<MycontainerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.red,
            image: DecorationImage(
                image: AssetImage("images/sakura_bg.jpg"),
                fit: BoxFit.cover,
                alignment: Alignment.bottomCenter,
                opacity: 1)),
        child: Container(
          margin: EdgeInsets.all(50),
          decoration: BoxDecoration(
            color: Colors.green,
            // borderRadius: BorderRadius.circular(25),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
            border: Border.all(
              color: Colors.red,
              width: 3
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 25,
                spreadRadius: 10,
                offset: Offset(10, 10)
              )
            ]
          ),
          child: Padding(
            // padding: const EdgeInsets.all(40.0),
            padding: EdgeInsets.only(
              top: 100,
              bottom: 100,
              right: 20,
              left: 20
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: mainBeigColor
              ),
              onPressed: (){}, 
              child: Text("LOG IN")),
          ),
        ),
        
      ),
    );
  }
}
