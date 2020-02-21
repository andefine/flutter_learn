import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter',
      initialRoute: '/',
      routes: {
        '/': (context) => FirstScreen(),
        SecondScreen.routeName: (context) => SecondScreen(),
      },
      // home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Screen'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            // Navigator.pushNamed(context, '/second');
            Navigator.pushNamed(
              context,
              SecondScreen.routeName,
              arguments: SecondArguments('this is title', 'this is message'),
            );
          },
          child: Text('first'),
        ),
      ),
    );
  }
}

class SecondArguments {
  final String title;
  final String message;

  SecondArguments(this.title, this.message);
}

class SecondScreen extends StatelessWidget {
  static const routeName = '/second';

  @override
  Widget build(BuildContext context) {
    final SecondArguments args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(args.message),
        ),
      ),
    );
  }
}
