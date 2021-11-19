import 'package:flutter/material.dart';
import 'package:practice/screens/tictactoe/pages/splash.dart';

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
