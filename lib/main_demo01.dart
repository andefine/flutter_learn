import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'hello flutter 111',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 40,
          // color: Colors.yellow,
          color: Color.fromRGBO(244, 233, 121, 0.5),
        ),
      ),
    );
  }
}
