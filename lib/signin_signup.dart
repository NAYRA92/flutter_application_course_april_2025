// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'constants.dart';


class SigninSignup extends StatefulWidget {
  const SigninSignup({super.key});

  @override
  State<SigninSignup> createState() => _SigninSignupState();
}

class _SigninSignupState extends State<SigninSignup> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        //directionality
      
        appBar: AppBar(
          title: Text("Nayra"),
          centerTitle: true,
          actions: [
            Icon(Icons.settings),
            Icon(Icons.person)
          ],
          backgroundColor: mainBeigColor,
          iconTheme: IconThemeData(
            color: Colors.white
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Center(
                  child: Text("Header"))),
              ListTile(
                title: Text("Item1"),
                subtitle: Text("Subtitle"),
                leading: Icon(Icons.home),
                trailing: Icon(Icons.more),
                onTap: (){},
              ),
               ListTile(
                title: Text("Item1"),
                subtitle: Text("Subtitle"),
                leading: Icon(Icons.home),
                trailing: Icon(Icons.more),
              )
              , ListTile(
                title: Text("Item1"),
                subtitle: Text("Subtitle"),
                leading: Icon(Icons.home),
                trailing: Icon(Icons.more),
              )
            ],
          ),
        ),
        backgroundColor: mainBeigColor,
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: Icon(Icons.chat),),
        bottomNavigationBar: 
        BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home), 
              label: "Home"),
               BottomNavigationBarItem(
              icon: Icon(Icons.favorite), 
              label: "Fav"),
               BottomNavigationBarItem(
              icon: Icon(Icons.person), 
              label: "Person")
          ]),
      ),
    );
  }
}