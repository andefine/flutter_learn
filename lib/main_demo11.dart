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
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('首页'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text('分类'),
            ),
          ],
          currentIndex: 1,
          onTap: (int index) {
            print(index);
          },
        ),
      ),
    );
  }
}

// class HomeContent extends StatelessWidget {
//   int countNum = 1;

//   @override
//   Widget build(BuildContext context) {
//     return ;
//   }
// }

class HomeContent extends StatefulWidget {
  HomeContent({Key key}) : super(key: key);

  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  int countNum = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(height: 200),
          Text('${this.countNum}'),
          SizedBox(height: 20),
          RaisedButton(
            child: Text('按钮'),
            onPressed: () {
              setState(() {
                this.countNum++;
                print(this.countNum);
              });
            },
          ),
        ],
      ),
    );
  }
}
