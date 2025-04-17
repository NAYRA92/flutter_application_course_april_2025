import 'package:flutter/material.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            myContainer(Colors.yellow, Icons.home),
            myContainer(Colors.amber, Icons.favorite),
            myContainer(Colors.black, Icons.access_alarm),
            myContainer(Colors.blue, Icons.person_3),
          ],
        ),
      )
    );
  }
}

Widget myContainer (
  Color mycolor,
  IconData myicondata
){
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: mycolor,
            borderRadius: BorderRadius.circular(15)
          ),
          child: Icon(myicondata, color: Colors.white,),
        ),
  );
}