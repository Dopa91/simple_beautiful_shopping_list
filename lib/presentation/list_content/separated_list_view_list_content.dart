import 'package:flutter/material.dart';
import 'package:simple_beautiful_shopping_list/models/product.dart';
import 'package:simple_beautiful_shopping_list/presentation/list_entry.dart';

class SeparatedListViewListContent extends StatelessWidget {
  const SeparatedListViewListContent({super.key, required this.products});

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: products.length,
      itemBuilder: (context, index) {
        // return ListTile kann durch "return ListEntry(product: products[index]);"
        // ersetzt werden. Bzw. einer class für die Darstellung.

        return ListTile(
          title: Text(products[index].name),
          leading: const Icon(Icons.access_alarm),
        );
      },
      separatorBuilder: (context, index) => const Divider(),
    );
  }
}

// Sobhi

// ListView.separated(
//       itemBuilder: (BuildContext context, int index) {
//         return ListEntry(product: products[index]);
//       },
//       separatorBuilder: (BuildContext context, int index) {
//         return const Column(children: [
//           SizedBox(height: 10),
//           Divider(color: Colors.red),
//           SizedBox(height: 10),
//         ]);
//       },
//       itemCount: products.length,
//     );