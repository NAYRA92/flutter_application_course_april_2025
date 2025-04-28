import "package:flutter/material.dart";

class ExpoWidgets extends StatefulWidget {
  const ExpoWidgets({super.key});

  @override
  State<ExpoWidgets> createState() => _ExpoWidgetsState();
}

class _ExpoWidgetsState extends State<ExpoWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: myStack()),
    );
  }

//this widget for stack
  Widget myStack() {
    return Stack(
      children: [
        Container(
          height: 300,
          width: 300,
          color: Colors.amber,
        ),
        Positioned(
          right: 1,
          child: Icon(
            Icons.favorite_border_rounded,
            size: 38,
          ),
        ),
      ],
    );
  }

//a row widget
  Widget myRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 150,
            width: 150,
            color: Colors.amber,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 90,
            width: 150,
            color: Colors.amber,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 80,
            width: 150,
            color: Colors.amber,
          ),
        ),
      ],
    );
  }

//a column widget
  Widget myColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 150,
            width: 150,
            color: Colors.amber,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 150,
            width: 100,
            color: Colors.amber,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 150,
            width: 20,
            color: Colors.amber,
          ),
        )
      ],
    );
  }
}
