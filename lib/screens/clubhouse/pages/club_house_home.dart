import 'package:flutter/material.dart';

class ClubHouseHome extends StatefulWidget {
  const ClubHouseHome({ Key? key }) : super(key: key);

  @override
  _ClubHouseHomeState createState() => _ClubHouseHomeState();
}

class _ClubHouseHomeState extends State<ClubHouseHome> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('Clubhouse'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text('Clubhouse'),
        ],),
      ),
    );
  }
}