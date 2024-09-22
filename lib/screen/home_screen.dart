import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(Icons.menu),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart))
        ],
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
