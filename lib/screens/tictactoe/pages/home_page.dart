import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool ohTurn = true; // the first person is o
  List<String> displayExOh = ['', '', '', '', '', '', '', '', ''];

  static var myNewFontWhite = GoogleFonts.pressStart2p(
    textStyle: TextStyle(
        fontSize: 15.0,
        fontWeight: FontWeight.w600,
        color: Colors.white,
        letterSpacing: 3),
  );

  int ohScore = 0;
  int exScore = 0;
  int filledBoxes = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20.0),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text('Player O', style: myNewFontWhite),
                      const SizedBox(height: 15.0),
                      Text(ohScore.toString(), style: myNewFontWhite),
                    ],
                  ),
                  Column(
                    children: [
                      Text('Player X', style: myNewFontWhite),
                      const SizedBox(height: 15.0),
                      Text(exScore.toString(), style: myNewFontWhite),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                margin: EdgeInsets.all(10.0),
                // decoration: BoxDecoration(
                //   image: DecorationImage(
                //     image: AssetImage("assets/images/tictactoelogo.png"),
                //     fit: BoxFit.scaleDown,
                //   ),
                // ),
                child: GridView.builder(
                  itemCount: 9,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        _onTapp(index);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Center(
                          child: Text(
                            displayExOh[index],
                            //index.toString(),
                            style: TextStyle(
                                color: Colors.grey[200], fontSize: 40.0),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Tic Tac Toe', style: myNewFontWhite),
                  Text('Created By Sohel', style: myNewFontWhite),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onTapp(index) {
    setState(() {
      if (ohTurn && displayExOh[index] == '') {
        displayExOh[index] = 'o';
        filledBoxes += 1;
      } else if (!ohTurn && displayExOh[index] == '') {
        displayExOh[index] = 'x';
        filledBoxes += 1;
      }
      ohTurn = !ohTurn;
      _checkWinner();
    });
  }

  void _checkWinner() {
    if (displayExOh[0] == displayExOh[1] &&
        displayExOh[0] == displayExOh[2] &&
        displayExOh[0] != '') {
      _showDialog(displayExOh[0]);
    }
    if (displayExOh[3] == displayExOh[4] &&
        displayExOh[3] == displayExOh[5] &&
        displayExOh[3] != '') {
      _showDialog(displayExOh[3]);
    }
    if (displayExOh[6] == displayExOh[7] &&
        displayExOh[6] == displayExOh[8] &&
        displayExOh[6] != '') {
      _showDialog(displayExOh[6]);
    }

    if (displayExOh[0] == displayExOh[3] &&
        displayExOh[0] == displayExOh[6] &&
        displayExOh[0] != '') {
      _showDialog(displayExOh[0]);
    }
    if (displayExOh[1] == displayExOh[4] &&
        displayExOh[1] == displayExOh[7] &&
        displayExOh[1] != '') {
      _showDialog(displayExOh[1]);
    }
    if (displayExOh[2] == displayExOh[5] &&
        displayExOh[2] == displayExOh[8] &&
        displayExOh[2] != '') {
      _showDialog(displayExOh[2]);
    }

    if (displayExOh[0] == displayExOh[4] &&
        displayExOh[0] == displayExOh[8] &&
        displayExOh[0] != '') {
      _showDialog(displayExOh[0]);
    }
    if (displayExOh[2] == displayExOh[4] &&
        displayExOh[4] == displayExOh[6] &&
        displayExOh[2] != '') {
      _showDialog(displayExOh[2]);
    } else if (filledBoxes == 9) {
      _showDrawDialog();
    }
  }

  void _showDrawDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Draw'),
          actions: [
            // ignore: deprecated_member_use
            FlatButton(
              onPressed: () {
                _clearBoard();
                Navigator.of(context).pop();
              },
              child: Text('Play Again'),
            ),
          ],
        );
      },
    );
  }

  void _showDialog(String winner) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('WINNER!.. is : ' + winner),
          actions: [
            // ignore: deprecated_member_use
            FlatButton(
              onPressed: () {
                _clearBoard();
                Navigator.of(context).pop();
              },
              child: Text('Play Again'),
            ),
          ],
        );
      },
    );

    if (winner == 'o') {
      ohScore += 1;
    } else if (winner == 'x') {
      exScore += 1;
    }
  }

  void _clearBoard() {
    setState(
      () {
        for (int i = 0; i < 9; i++) {
          displayExOh[i] = '';
        }
      },
    );
    filledBoxes = 0;
  }
}
