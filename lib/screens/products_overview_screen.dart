import 'package:flutter/material.dart';
import 'package:seal_shop/widgets/products_grid.dart';

class ProductsOverviewScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Seal Shop"),
      ),
      body: ProductsGrid(),
    );
  }
}


