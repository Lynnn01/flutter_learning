import 'package:flutter/material.dart';
import 'package:profile_app/drawer.dart';

class GridPage extends StatefulWidget {
  const GridPage({super.key});

  @override
  State<GridPage> createState() => _GridPageState();
}

class _GridPageState extends State<GridPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid Viwe"),
      ),
      drawer: const MyDrawer(),
      body: Container(),
    );
  }
}
