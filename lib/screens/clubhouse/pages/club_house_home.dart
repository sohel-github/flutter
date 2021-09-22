import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice/screens/clubhouse/config/palette.dart';
import 'package:practice/screens/clubhouse/pages/home_screen.dart';

class ClubHouseHome extends StatefulWidget {
  const ClubHouseHome({ Key? key }) : super(key: key);

  @override
  _ClubHouseHomeState createState() => _ClubHouseHomeState();
}

class _ClubHouseHomeState extends State<ClubHouseHome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clubhouse UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Palette.background),
        scaffoldBackgroundColor: Palette.background,
        primaryColor: Colors.white,
        accentColor: Palette.green,
        iconTheme: const IconThemeData(color: Colors.black),
        fontFamily: GoogleFonts.montserrat().fontFamily,
        textTheme: GoogleFonts.montserratTextTheme(),
      ),
      home: HomeScreen()
    );
  }
}