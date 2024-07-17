import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getwidget/getwidget.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  var items = List<String>.generate(20, (i) => 'Item $i');
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
