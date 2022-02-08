import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  static route() => MaterialPageRoute(builder: (context) => const CartScreen());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CartScreen'),
      ),
      body: const Center(
        child: Text('CartScreen'),
      ),
    );
  }
}
