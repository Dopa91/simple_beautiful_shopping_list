import 'package:flutter/material.dart';
import 'package:simple_beautiful_shopping_list/models/product.dart';

class BuilderListViewListContent extends StatelessWidget {
  const BuilderListViewListContent({super.key, required this.products});

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (BuildContext context, int index) {
        //Product current = products[index];

        // return ListTile kann durch "return ListEntry(product: products[index]);"
        // ersetzt werden. Bzw. einer class für die Darstellung.

        return ListTile(
          title: Text(products[index].name),
          leading: const Icon(Icons.shopping_cart),
        );
      },
    );
  }
}
