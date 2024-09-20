import 'package:flutter/material.dart';
import 'package:simple_beautiful_shopping_list/models/product.dart';
import 'package:simple_beautiful_shopping_list/presentation/main_screen.dart';

void main() {
  final List<Product> products = [
    Product("Tomate", 19.99),
    Product("Apfel", 7.99),
    Product("Wassermelone", 34.99),
    Product("Tee", 12.99),
    Product("Lego", 649.99)
  ];
// // for (int index = 0; index < products.length; index++) {
// //     Product current = products[index];
// //     print(current);
//   }

  runApp(MainApp(products: products));
}

// Das hier ist eine Ausnahme. Die erste Klasse darf mit in der main.dart sein.
class MainApp extends StatelessWidget {
  const MainApp({super.key, required this.products});

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Beautiful Shopping App',
      debugShowCheckedModeBanner: false,
      home: MainScreen(products: products),
    );
  }
}
