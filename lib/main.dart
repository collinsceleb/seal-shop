import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seal_shop/providers/products.dart';
import 'package:seal_shop/screens/products_overview_screen.dart';
import 'package:seal_shop/screens/product_detail_screen.dart';

void main() {
  runApp(SealShop());
}

class SealShop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) =>
        Products(),
      child: MaterialApp(
        title: 'Seal Shop',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          accentColor: Colors.deepOrange,
          fontFamily: 'Lato',

        ),
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.productDetailRouteName: (context) => ProductDetailScreen()
        },
      ),
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
