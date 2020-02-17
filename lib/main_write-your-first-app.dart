import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Name Generator',
      home: RandomWord(),
    );
  }
}

class RandomWord extends StatefulWidget {
  @override
  RandomWordState createState() => RandomWordState();
}

class RandomWordState extends State<RandomWord> {
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18);

  Widget _buildSuggestions() {
    return ListView.builder(
      padding: EdgeInsets.all(16),
      itemBuilder: (context, i) {
        if (i.isOdd) return Divider();

        final index = i ~/ 2;
        if (index >= this._suggestions.length) {
          this._suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(this._suggestions[index]);
      },
    );
  }

  Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: this._biggerFont,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // final wordPair = WordPair.random();

    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Name Generator'),
      ),
      body: _buildSuggestions(),
    );
  }
}
