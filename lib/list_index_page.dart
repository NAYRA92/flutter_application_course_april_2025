import "package:flutter/material.dart";


class ListIndexPage extends StatefulWidget {
  const ListIndexPage({super.key});

  @override
  State<ListIndexPage> createState() => _ListIndexPageState();
}

List<String> _names = [
  "Name 1",
  "Name 2",
  "Name 3",
  "Name 4",
];

class _ListIndexPageState extends State<ListIndexPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _names.length,
        itemBuilder: (context, index) {
         return Text(_names[index]);
       },
      ),
    );
  }
}