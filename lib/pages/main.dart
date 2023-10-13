import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: const Text("Hospital"),
            backgroundColor: Colors.lightBlueAccent),
        body: ListView(
          padding: const EdgeInsets.all(10),
          scrollDirection: Axis.vertical,
          children: const [
            ListEmployeeItem(warna: Colors.amber, text: "Hi"),
            ListEmployeeItem(warna: Colors.red, text: "Hello")
          ],
        ),
      ),
    );
  }
}

class ListEmployeeItem extends StatelessWidget {
  const ListEmployeeItem({super.key, required this.text, required this.warna});

  final String text;
  final Color warna;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: warna,
        height: 100,
        width: 100,
        child: Center(child: Text(text)));
  }
}
