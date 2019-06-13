import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello World'),
        ),
        body: Center(
          child: Container(
//            child: new Text(//TextWeight
//              'Hello World',
//              style: TextStyle(
//                  fontSize: 32.0, color: Color.fromARGB(255, 255, 150, 150)),
//            ),
//            alignment: Alignment.topLeft,
////            width: 500.0,
////            height: 100,
////            color: Colors.lightBlue, //背景色
////            padding: const EdgeInsets.all(30.0),//内边距
//            padding: const EdgeInsets.fromLTRB(10.0, 30.0, 0.0, 0.0),
//            margin: const EdgeInsets.all(20.0),
//            decoration: new BoxDecoration(//渐变
//              gradient: const LinearGradient(colors: [
//                Colors.lightBlue,Colors.greenAccent,Colors.purple
//              ])
//            ),
//          ),
            child: new Image.network(
              'http://ww1.sinaimg.cn/large/0065oQSqly1g2pquqlp0nj30n00yiq8u.jpg',
              scale: 6.0,//缩放比例
//              fit: BoxFit.fitHeight,//图片展示效果
//              color: Colors.greenAccent,git
//              colorBlendMode: BlendMode.exclusion,//叠加颜色
            repeat: ImageRepeat.repeat,
            ),
            width: 400.0,
            height: 300.0,
            color: Colors.lightBlue,
          ),
        ),
      ),
    );
  }
}
