import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('flutter demo'),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: <Widget>[
        Text('title'),
        Text('title'),
        Text('title'),
        Text('title'),
        Text('title'),
        Text('title'),
        Text('title'),
        Text('title'),
        Text('title'),
        Text('title'),
        Text('title'),
      ],
    );
  }
}
