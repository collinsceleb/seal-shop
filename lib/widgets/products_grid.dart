import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seal_shop/providers/products.dart';
import 'package:seal_shop/widgets/product_item.dart';


class ProductsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final products = productsData.items;
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
      itemBuilder: (context, index) => ProductItem(products[index].id,
          products[index].title, products[index].imageUrl),
      padding: const EdgeInsets.all(10.0),
      itemCount: products.length,
    );
  }
}