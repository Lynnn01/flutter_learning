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
        scrolledUnderElevation: 0,
        title: const Text("Grid View"),
      ),
      drawer: const MyDrawer(),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // จำนวนคอลัมน์ในกริด
          childAspectRatio: 1.0, // ทำให้แต่ละไอเท็มเป็นสี่เหลี่ยมจัตุรัส
        ),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.all(4.0), // ระยะห่างรอบไอเท็ม
            decoration: BoxDecoration(
              color: Colors.white, // สีพื้นหลังของไอเท็ม
              border: Border.all(
                color: Colors.black, // สีกรอบของไอเท็ม
                width: 2.0, // ความหนาของกรอบ
              ),
              borderRadius: BorderRadius.circular(8.0), // ความโค้งของมุมกรอบ
            ),
            child: Center(
              child: Text("Item $index"),
            ),
          );
        },
        itemCount: 20, // จำนวนไอเท็มในกริด
      ),
    );
  }
}
