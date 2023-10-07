import 'package:flutter/material.dart';
import 'editingextingproduct.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return editingExtingProduct(
      description: "New Balance 550",
      price: "",
      size: "",
      color: "",
      quantity: "",
      add: "",
    );
  }
}
