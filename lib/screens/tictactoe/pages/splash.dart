import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice/screens/tictactoe/pages/home_page.dart';

class Splash extends StatelessWidget {
  static var myNewFontWhite = GoogleFonts.pressStart2p(
    textStyle: TextStyle(
        fontSize: 15.0,
        fontWeight: FontWeight.w600,
        color: Colors.white,
        letterSpacing: 3),
  );
  static var playGameBtn = GoogleFonts.pressStart2p(
    textStyle: TextStyle(
      fontSize: 15.0,
      fontWeight: FontWeight.w600,
      color: Colors.grey[800],
      letterSpacing: 3,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Text(
                  'Tic Tac Toe',
                  style: myNewFontWhite,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: AvatarGlow(
                  endRadius: 140,
                  duration: Duration(seconds: 2),
                  glowColor: Colors.white,
                  repeat: true,
                  repeatPauseDuration: Duration(seconds: 1),
                  startDelay: Duration(seconds: 1),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        style: BorderStyle.none,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey[900],
                      child: Container(
                        child: Image.asset(
                          'assets/images/tictactoelogo.png',
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      radius: 80.0,
                    ),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Text(
                  'Created by Sohel',
                  style: myNewFontWhite,
                ),
                const SizedBox(height: 20.0),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: 40, right: 40, bottom: 60),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: EdgeInsets.all(30),
                        color: Colors.white,
                        child: Center(
                          child: Text(
                            'PLAY GAME',
                            style: playGameBtn,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
