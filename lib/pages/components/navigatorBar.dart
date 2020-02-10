import 'package:flutter/material.dart';

class NavigatorBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Text('hello world'),
          Text('hello world'),
          Icon(
            IconData(0xe6e2, fontFamily: 'MyIcons'),
            size: 40,
            color: Colors.black
          )
        ],
      ),
      margin: EdgeInsets.fromLTRB(0.0, 25.0, 0.0, 0.0),
      padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0)
    );
  }
}