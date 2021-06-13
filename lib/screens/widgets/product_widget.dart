import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  final String description;
  final String price;
  final String image;

  ProductWidget({
    required this.description,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.grey, width: 0.1),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 8,
              child: Image.asset(
                "assets/images/${this.image}",
                fit: BoxFit.contain,
              ),
            ),
            Expanded(
              flex: 1,
              child: Text(this.description),
            ),
            Expanded(
              flex: 1,
              child: Text(
                "R\$ ${this.price}",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
