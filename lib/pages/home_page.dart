import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  int days = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(right: 60.0),
          child: Center(
            child: Text("Catlog App"),
          ),
        ),
      ),
      body: Container(
        child: Center(
          child: Text("Hello  to $days days of flutter"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
