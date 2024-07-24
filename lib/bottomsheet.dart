import 'package:flutter/material.dart';
import 'package:profile_app/drawer.dart';
import 'package:profile_app/sheet.dart';

class MyBottomSheet extends StatefulWidget {
  const MyBottomSheet({super.key});

  @override
  State<MyBottomSheet> createState() => _MyBottomSheetState();
}

class _MyBottomSheetState extends State<MyBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Sheet'),
      ),
      drawer: const MyDrawer(), // Side navigation drawer
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Display bottom sheet with grid list
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return const MySheet();
                  },
                );
              },
              child: const Text('Show Bottom Sheet'),
            ),
          ],
        ),
      ),
    );
  }
}
