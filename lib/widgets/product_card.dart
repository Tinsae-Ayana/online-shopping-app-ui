import 'package:flutter/material.dart';
import 'package:online_shopping_ui/models/products.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: constraint.maxHeight * 0.75,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: product.color),
            child: Image.asset(
              product.image,
              height: 150,
              width: 150,
            ),
          ),
          const SizedBox(height: 5),
          Text(product.title,
              style: TextStyle(
                  color: Colors.black.withOpacity(0.8), fontSize: 18)),
          Text("\$${product.price.toString()}",
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold))
        ],
      );
    });
  }
}
