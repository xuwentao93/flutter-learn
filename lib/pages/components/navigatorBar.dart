import 'package:demo/components/CustomizeIcon.dart';
import 'package:flutter/material.dart';

class NavigatorBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            child: Icon(
            CustomizeIcon.scan,
            size: 40,
            color: Colors.black
            ),
          ),
          SearchCommodity(),
          Container(
            child: CircleAvatar(
            backgroundImage: AssetImage('lib/assets/imgs/envelope.png')
            ),
            width: 30.0,
            height: 30.0,
            margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
          ),
          Icon(
            CustomizeIcon.wangwang,
            size: 35,
            color: Color(0xff4989e2)
          )
        ],
        crossAxisAlignment: CrossAxisAlignment.center
      ),
      margin: EdgeInsets.fromLTRB(0.0, 25.0, 0.0, 0.0),
      padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
      height: 50.0
    );
  }
}

class SearchCommodity extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: TextField(
        decoration: InputDecoration(
          labelText: "商品",
          hintText: "请输入你要购买的商品",
          border: OutlineInputBorder(
            borderSide: BorderSide(
              width: 30.0,
              color: Color(0xfff9800),
            ),
            borderRadius: BorderRadius.circular(40.0)
          ),
          prefixIcon: Icon(
            CustomizeIcon.search,
            color: Color(0xff9999aa)
          ),
          suffixIcon: Icon(
            CustomizeIcon.camera
          )
        ),
        onChanged: (String value) {
          print(value);
        },
      ),
      width: 260.0,
      height: 40.0,
      margin: EdgeInsets.fromLTRB(5.0, 0, 10.0, 0),
    );
  }
}