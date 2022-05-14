import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final int days = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calalog App")),
      body: Center(
        child: Container(
          child: Text("Wlecome to $days days of flutter"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
