import 'package:flutter/material.dart';

void main() => runApp(MyApp(
  items: List<String>.generate(25, (i) => 'item $i')
));

class MyApp extends StatelessWidget {
  final List<String> items;
  MyApp({Key key, @required this.items}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'this is a primary flutter demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('welcome to flutter writen by xuwentao')
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.perm_camera_mic),
              title: Text('this is a text introduce speech sounds')
            ),
            ListTile(
              leading: Icon(Icons.access_time),
              title: Text('this is a text introduce time')
            ),
            MyList(),
            Container(
              child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 2.0,
                childAspectRatio: 1.0
                ),
              children: <Widget>[
                Text('123'),
                Text('4444')
              ],
            ),
            height: 180.0
            )
          ],
        )
      )
    );
  }
}

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 180.0,
            color: Color.fromRGBO(255, 0, 0, 1)
          ),
          Container(
            width: 180.0,
            color: Color.fromRGBO(0, 0, 0, 1)
          ),
          Container(
            width: 180.0,
            color: Color.fromRGBO(255, 250, 0, 1)
          ),
          Container(
            width: 180.0,
            color: Color.fromRGBO(255, 0, 44, 1)
          )
        ],
      ),
      height: 180.0
    );
  }
}