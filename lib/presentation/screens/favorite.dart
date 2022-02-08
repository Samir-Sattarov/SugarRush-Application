import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);
  static route() =>
      MaterialPageRoute(builder: (context) => const FavoriteScreen());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {},
          child: const Icon(Icons.chevron_left),
        ),
        title: const Text('FavoriteScreen'),
      ),
      body: const Center(
        child: Text('FavoriteScreen'),
      ),
    );
  }
}
