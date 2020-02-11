import 'package:demo/pages/components/navigatorBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatelessWidget {
  final SystemUiOverlayStyle _style = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    return Scaffold(
      body: Column(
        children: <Widget>[
          NavigatorBar()
        ],
      ),
    );
  }
}