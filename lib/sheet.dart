import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class MySheet extends StatefulWidget {
  const MySheet({super.key});

  @override
  State<MySheet> createState() => _MySheetState();
}

class _MySheetState extends State<MySheet> {
  var items = List<String>.generate(50, (i) => 'Item $i');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Me"),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const GFListTile(
              titleText: 'Title',
              subTitleText:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing',
              icon: Icon(Icons.favorite),
            ),
          );
        },
      ),
    );
  }
}
