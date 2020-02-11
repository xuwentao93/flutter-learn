import 'package:demo/components/CustomizeIcon.dart';
import 'package:flutter/material.dart';

class NavigatorBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Icon(
            CustomizeIcon.scan,
            size: 40,
            color: Colors.black
          ),
          SearchCommodity(),
          Image.asset('lib/assets/imgs/envelope.png')
        ],
        crossAxisAlignment: CrossAxisAlignment.center,
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
              width: 3.0,
              color: Colors.orange,
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
      width: 300.0,
      height: 40.0,
    );
  }
}