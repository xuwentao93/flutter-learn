import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'navigator learn',
      home: ProductList(
        productList: List.generate(20, (i) => Commodity('commodityfff ${i + 1}', 'this iss commodity $i breif'))
      )
    )
  );
}

class Commodity {
  final String name;
  final String brief;
  Commodity(this.name, this.brief);
}

class ProductList extends StatelessWidget {
  final List<Commodity> productList;
  ProductList({ Key key, @required this.productList }): super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('learn how to use navigator')
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(productList[index].name),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CommodityPage(commodity: productList[index])
                )
              );
            },
          );
        },
      )
    );
  }
}

class CommodityPage extends StatelessWidget {
  final Commodity commodity;
  CommodityPage({ Key key, @required this.commodity }): super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${commodity.name}')
      ),
      body: Center(
        child: Text('${commodity.brief}')
      )
    );
  }
}