import 'package:demo/pages/components/navigatorBar.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          NavigatorBar()
        ],
      )
    );
  }
}