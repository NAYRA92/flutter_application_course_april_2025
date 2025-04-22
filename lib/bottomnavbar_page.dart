// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';


class BottomnavbarPage extends StatefulWidget {
  const BottomnavbarPage({super.key});

  @override
  State<BottomnavbarPage> createState() => _BottomnavbarPageState();
}
int myIndex = 0;
Color myColor = Colors.black;
Widget myNewWidget = Container();

class _BottomnavbarPageState extends State<BottomnavbarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: myNewWidget),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: myIndex,
        onTap: (index){
          setState(() {
            myIndex = index;
            if(myIndex == 0){
              // myColor = Colors.red;
              myNewWidget = Container(
                height: 150,
                width: 150,
                color: Colors.pink,
              );
            }
            else if(myIndex == 1){
              // myColor = Colors.blue;
              myNewWidget = Image.asset('images/Logo.png');
            }
            else{
              // myColor = Colors.green;
              myNewWidget = Text("Hello");
            }
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings"),
             BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home"),
             BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile")
        ]),
    );
  }
}