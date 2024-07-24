import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:profile_app/drawer.dart';

class GridlistPage extends StatefulWidget {
  const GridlistPage({super.key});

  @override
  State<GridlistPage> createState() => _GridlistPageState();
}

class _GridlistPageState extends State<GridlistPage> {
  var items = List<String>.generate(5, (i) => 'Item $i');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mix Layout"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const ListTile(
                    title: Text('Title'),
                    subtitle: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing'),
                    trailing: Icon(Icons.favorite),
                  ),
                );
              },
            ),
          ),
          const Divider(
            color: Colors.black,
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of columns in the grid
                childAspectRatio: 1.0, // Makes each item square
              ),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: const EdgeInsets.all(4.0), // Spacing around items
                  decoration: BoxDecoration(
                    color: Colors.white, // Background color of items
                    border: Border.all(
                      color: Colors.black, // Border color of items
                      width: 2.0, // Border width
                    ),
                    borderRadius: BorderRadius.circular(8.0), // Border radius
                  ),
                  child: Center(
                    child: Text("Item $index"),
                  ),
                );
              },
              itemCount: 20, // Number of items in the grid
            ),
          ),
        ],
      ),
    );
  }
}
