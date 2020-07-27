import 'package:flutter/material.dart';
import 'package:seal_shop/widgets/products_overview_screen.dart';

void main() {
  runApp(SealShop());
}

class SealShop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Seal Shop',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.deepOrange,
        fontFamily: 'Lato',

      ),
      home: ProductsOverviewScreen(),
    );
  }
}

//class SealShopHomePage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Seal Shop'),
//      ),
//      body: Center(
//        child: Text('Let\'s build a shop!'),
//      ),
//    );
//  }
//}
