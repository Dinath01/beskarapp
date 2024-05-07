import 'package:beskarapp/models/products.dart';
import 'package:flutter/material.dart';

class ProductTiles extends StatelessWidget {
  final Product product;

  const ProductTiles({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Icon(Icons.favorite),
          Text(product.name),
          Text(product.price.toStringAsFixed(2)),
          Text(product.desc),
        ],
      ),
    );
  }
}