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
  List<Widget> _getData() {
    List<Widget> list = List();

    for (int i = 0; i < 20; i++) {
      list.add(ListTile(
        title: Text('$i title'),
      ));
    }

    return list;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: this._getData(),
    );
  }
}
