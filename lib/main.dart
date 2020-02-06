import 'package:flutter/material.dart';

void main() => runApp(MyApp(
  items: List<String>.generate(25, (i) => 'item $i')
));

class MyApp extends StatelessWidget {
  final List<String> items;
  MyApp({Key key, @required this.items}): super(key: key);
  @override
  Widget build(BuildContext context) {
    var stack = Stack(
      children: <Widget>[
        CircleAvatar(
          backgroundImage: NetworkImage('http://newimg.jspang.com/zhishixingqiu.png'),
          radius: 100.0
        ),
        Positioned(
          top: 100.0,
          left: 10.0,
          child: Container(
            child: Text('hello world'),
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 0, 0, 1)
            ),
            padding: EdgeInsets.all(10.0)
          )
        )
      ],
    );
    return MaterialApp(
      title: 'this is a primary flutter demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('welcome to flutter demo')
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.perm_camera_mic),
              subtitle: Text('a brief text'),
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
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      onPressed: () {},
                      color: Color.fromRGBO(64, 158, 255, 1),
                      child: Text(
                        'this is a primary button',
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1)
                        )
                      )
                    )
                  ),
                  RaisedButton(
                    onPressed: () {},
                    color: Color.fromRGBO(0, 0, 0, 1),
                    child: Text(
                      'button',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1)
                      )
                    )
                  ),
                  RaisedButton(
                    onPressed: () {},
                    color: Color.fromRGBO(64, 158, 255, 1),
                    child: Text(
                      'primary button',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1)
                      )
                    )
                  )
                ],
              )
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Text('hello world'),
                  Text('hi, this is a second line')
                ],
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.end,
              )
            ),
            Container(
              child: stack
            ),
            Container(
              child: Card(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Text('hello, this is a first text'),
                      subtitle: Text('hello, this is a brief text'),
                      leading: Icon(Icons.perm_camera_mic)
                    ),
                    Divider(),
                    ListTile(
                      title: Text('hello world'),
                      subtitle: Text('hello, small world'),
                      leading: Icon(Icons.perm_identity)
                    )
                  ],
                )
              )
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