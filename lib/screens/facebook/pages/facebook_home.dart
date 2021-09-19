import 'package:flutter/material.dart';

class FacebookHome extends StatelessWidget {
  const FacebookHome({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Facebook'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Facebook'),
          ],
        ),
      ),
    );
  }
}