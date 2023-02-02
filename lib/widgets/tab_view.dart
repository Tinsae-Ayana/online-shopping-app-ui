import 'package:flutter/material.dart';
import 'package:online_shopping_ui/models/products.dart';
import 'package:online_shopping_ui/screens/detail_screen.dart';
import 'package:online_shopping_ui/widgets/product_card.dart';

class TabView extends StatelessWidget {
  const TabView({super.key, required this.products});
  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 2,
          crossAxisSpacing: 5,
          childAspectRatio: 0.65),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: ((context) =>
                    DeatailScreen(product: products[index]))));
          },
          child: Hero(
            tag: products[index],
            child: ProductCard(
              product: products[index],
            ),
          ),
        );
      },
    );
  }
}
