import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ImRich extends StatelessWidget {
  const ImRich({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("انا غني",
            style: GoogleFonts.arefRuqaaInk(
              fontSize: 34,
            ),),
            Image.network("https://i1.sndcdn.com/avatars-000346171373-6dvenh-t240x240.jpg"),
          ],
        )),
    );
  }
}