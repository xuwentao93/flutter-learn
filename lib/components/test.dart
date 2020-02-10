// import 'package:demo/utils/index.dart';

void main() {
  // Set<String> sets = { 'a', 'b', 'a' }; // the code show how to declare set(no duplicate element).
  // Map<String, dynamic> map = {  // the code show how to declare dynamic type in map.
  //   'a': 1,
  //   'b': String
  // };
  // bool testOptionalPrameters({int first = 5, int second}) => first > second; // named parameters, default name.
  // bool test = testOptionalPrameters(second: 6); // named parameters.
  // print(test);
  // int a = 10;
  // int b = 20;
  // assert(a > b); // assert just work in debug. if is false, will throw an Exception.
  // Position position = new Position(20.0, 10.0); // class primary learn
  // position.y = position.x;
  // print('${position.x}, ${position.y}');
  // print(position.positon);
  // print(1 is int); // is keywords learn, like typeof in javascript.
  // Tools tool = new Tools(() => {}); // import use.
}

class Position {
  double x;
  double y;
  Position positon;
  Position(x, y) {
    this.x = x;
    this.y = y;
  }
}