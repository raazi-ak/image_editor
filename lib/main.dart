import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_editor/image_card.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(systemNavigationBarColor: Color(0xff1c1c19)));
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(
    MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Scaffold(
        backgroundColor: Vx.hexToColor("#1c1c19"),
        appBar: AppBar(
          toolbarHeight: 100.0,
          title: Text(
            'Photo Editor',
            style: GoogleFonts.montserrat(
              textStyle: const TextStyle(
                  color: Color.fromARGB(255, 230, 226, 221),
                  fontSize: 48.0,
                  fontWeight: FontWeight.normal),
            ),
          ),
          backgroundColor: const Color(0xff1c1c19),
        ),
        body: const ImageCard(),
      ),
    ),
  );
}
