import 'package:flutter/material.dart';
import 'package:practice/screens/clubhouse/pages/club_house_home.dart';
import 'package:practice/screens/facebook/pages/facebook_home.dart';
import 'package:practice/screens/netflix/pages/netflix.dart';
import 'package:practice/screens/tictactoe/pages/index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => PageListView(),
        '/clubhouse': (BuildContext context) => ClubHouseHome(),
        '/facebook': (BuildContext context) => FacebookHome(),
        '/netflix': (BuildContext context) => Netflix(),
        '/tictactoe': (BuildContext context) => Index(),
      },
    );
  }
}

class PageListView extends StatelessWidget {
  final List<String> items = [
    'ClubHouse UI',
    'Facebook UI',
    'Netflix UI',
    'Tic Tac Toe'
  ];
  final List<String> pages = ['clubhouse', 'facebook', 'netflix', 'tictactoe'];

  PageListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            tileColor: Colors.black,
            onTap: () {
              Navigator.pushNamed(context, '/${pages[index]}');
            },
            title: Text(
              items[index],
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          );
        },
      ),
    );
  }
}
