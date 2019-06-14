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
            child:
//          Container(
            _buildCard()
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
//            margin: EdgeInsets.fromLTRB(0, 40, 0, 30),
//            height: 600,
//            child: Card(
//              child: Row(
//                crossAxisAlignment: CrossAxisAlignment.start,
//                children: <Widget>[
//                  Container(
//                    width: 440,
//                    child: leftColumn,
//                  )
//                ],
//              ),
//            ),
//            new Image.network(
//              'http://ww1.sinaimg.cn/large/0065oQSqly1g2pquqlp0nj30n00yiq8u.jpg',
//              scale: 6.0,//缩放比例
//              fit: BoxFit.fitHeight,//图片展示效果
////              color: Colors.greenAccent,git
////              colorBlendMode: BlendMode.exclusion,//叠加颜色
//            repeat: ImageRepeat.noRepeat,
//            ),
//            width: 400.0,
//            height: 300.0,
//            color: Colors.lightBlue,
//          ),
            ),
      ),
    );
  }

  static var stars = Row(
    mainAxisSize: MainAxisSize.max,
    children: <Widget>[
      Icon(
        Icons.star,
        color: Colors.greenAccent,
      ),
      Icon(
        Icons.star,
        color: Colors.greenAccent,
      ),
      Icon(
        Icons.star,
        color: Colors.greenAccent,
      ),
      Icon(
        Icons.star,
        color: Colors.black,
      ),
      Icon(
        Icons.star,
        color: Colors.black,
      ),
    ],
  );

  static final ratings = Container(
    padding: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        stars,
        Text(
          '170 Reviews',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w800,
            fontFamily: 'Roboto',
            letterSpacing: 0.5,
            fontSize: 20,
          ),
        )
      ],
    ),
  );

  static final descTextStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w800,
    fontFamily: 'Roboto',
    letterSpacing: 0.5,
    fontSize: 18,
    height: 2,
  );

  static final iconList = DefaultTextStyle.merge(
    style: descTextStyle,
    child: Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: <Widget>[
              Icon(Icons.kitchen, color: Colors.greenAccent),
              Text('PREP'),
              Text('25 min'),
            ],
          ),
          Column(
            children: <Widget>[
              Icon(
                Icons.timer,
                color: Colors.greenAccent,
              ),
              Text('COOK'),
              Text('1 hr'),
            ],
          ),
          Column(
            children: <Widget>[
              Icon(
                Icons.restaurant,
                color: Colors.greenAccent,
              ),
              Text('FEEDS:'),
              Text('4-6'),
            ],
          )
        ],
      ),
    ),
  );

  final leftColumn = Container(
    padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
    child: Column(
      children: <Widget>[
        ratings,
        iconList,
      ],
    ),
  );

  Widget _buildImageRow(int index) => Row(
        children: <Widget>[
          _buildDecoratedImage(1),
          _buildDecoratedImage(1),
        ],
      );

  Widget _buildDecoratedImage(int imageIndex) => Expanded(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(width: 10, color: Colors.black38),
            borderRadius: const BorderRadius.all(
              const Radius.circular(8),
            ),
          ),
          margin: const EdgeInsets.all(4),
          child: Image.network(
              'https://ws1.sinaimg.cn/large/0065oQSqly1fytdr77urlj30sg10najf.jpg'),
        ),
      );

  Widget _buildImageColumn() => Container(
        decoration: BoxDecoration(
          color: Colors.black26,
        ),
        child: Column(
          children: <Widget>[
            _buildImageRow(1),
            _buildImageRow(3),
          ],
        ),
      );

  Widget _buildGrid() => GridView.extent(
        maxCrossAxisExtent: 150,
        padding: const EdgeInsets.all(4),
        mainAxisSpacing: 4,
        children: _buildGridTileList(30),
      );

  List<Container> _buildGridTileList(int count) => List.generate(
        count,
        (i) => Container(
              child: Image.network(
                  'https://ws1.sinaimg.cn/large/0065oQSqly1g0ajj4h6ndj30sg11xdmj.jpg'),
            ),
      );

  Widget _buildList() => ListView(
        children: <Widget>[
          _tile("title1", "subTitle1", Icons.restaurant),
          _tile("title1", "subTitle1", Icons.restaurant),
          _tile("title1", "subTitle1", Icons.restaurant),
          _tile("title1", "subTitle1", Icons.restaurant),
          _tile("title1", "subTitle1", Icons.restaurant),
          _tile("title1", "subTitle1", Icons.restaurant),
          _tile("title1", "subTitle1", Icons.restaurant),
          _tile("title1", "subTitle1", Icons.restaurant),
          _tile("title1", "subTitle1", Icons.restaurant),
          _tile("title1", "subTitle1", Icons.restaurant),
          _tile("title1", "subTitle1", Icons.restaurant),
          _tile("title1", "subTitle1", Icons.restaurant),
          _tile("title1", "subTitle1", Icons.restaurant),
          _tile("title1", "subTitle1", Icons.restaurant),
          _tile("title1", "subTitle1", Icons.restaurant),
        ],
      );

  ListTile _tile(String title, String subTitle, IconData icon) => ListTile(
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
        subtitle: Text(subTitle),
        leading: Icon(
          icon,
          color: Colors.blue[500],
        ),
      );

  Widget _buildStack() => Stack(
        alignment: const Alignment(0.6, 0.6),
        children: <Widget>[
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://ws1.sinaimg.cn/large/0065oQSqgy1fze94uew3jj30qo10cdka.jpg'),
            radius: 100,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black45,
            ),
            child: Text(
              'Roy Wu',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      );

  Widget _buildCard() => SizedBox(
        child: Card(
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  'title1',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                subtitle: Text('subtitle1'),
                leading: Icon(
                  Icons.restaurant_menu,
                  color: Colors.blue,
                ),
              ),
              Divider(),
              ListTile(
                title: Text(
                  'title2',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                subtitle: Text('subtitle2'),
                leading: Icon(
                  Icons.timer,
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text(
                  'title3',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                subtitle: Text('subtitle3'),
                leading: Icon(
                  Icons.mail_outline,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      );
}
