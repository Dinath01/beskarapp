import 'package:beskarapp/models/products.dart';

class Shop {
  final List<Product> _shop = [
    Product(
      name: "Product 1",
      price: 99.9,
      desc: "description",
    ),
    Product(
      name: "Product 2",
      price: 99.9,
      desc: "description",
    ),
    Product(
      name: "Product 3",
      price: 99.9,
      desc: "description",
    ),
    Product(
      name: "Product 4",
      price: 99.9,
      desc: "description",
    ),
  ];

  List<Product> _cart = [];

  List<Product> get shop => _shop;

  List<Product> get cart => _cart;

  void addToCart(Product item) {
    _cart.add(item);
  }

  void removeFromCart(Product item) {
    _cart.remove(item);
  }
}
