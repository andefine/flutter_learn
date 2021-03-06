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
    return Center(
      child: Container(
        // child: Image.network(
        //   'https://www.itying.com/images/201905/thumb_img/1101_thumb_G_1557845381862.jpg',
        //   alignment: Alignment.topLeft,
        //   color: Colors.yellow,
        //   colorBlendMode: BlendMode.luminosity,
        //   fit: BoxFit.cover,
        // ),

        width: 300,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.yellow,
          // borderRadius: BorderRadius.all(
          //   Radius.circular(150),
          // ),
          borderRadius: BorderRadius.circular(150),
          image: DecorationImage(
            image: NetworkImage(
                'https://www.itying.com/images/201905/thumb_img/1101_thumb_G_1557845381862.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
