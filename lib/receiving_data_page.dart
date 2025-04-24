// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


class ReceivingDataPage extends StatefulWidget {
  final String userName;
  final String userCity;

  const ReceivingDataPage({
    super.key, 
    required this.userName, required this.userCity});

  @override
  State<ReceivingDataPage> createState() => _ReceivingDataPageState();
}

class _ReceivingDataPageState extends State<ReceivingDataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("Hello, ${widget.userName} from ${widget.userCity}"),
      ),
    );
  }
}