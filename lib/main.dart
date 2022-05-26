import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './screen/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Corner Field',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          fontFamily: GoogleFonts.roboto().fontFamily,
        ),
        home: HomePage());
  }
}
