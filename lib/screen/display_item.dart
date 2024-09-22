import 'package:api_eco/model/item_model.dart';
import 'package:flutter/material.dart';

class ProductDisplay extends StatelessWidget {
  final Product product;

  const ProductDisplay({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3,
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 160,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                  image: NetworkImage(product.image),
                ),
              ),
            ),
            Text(
              product.title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
