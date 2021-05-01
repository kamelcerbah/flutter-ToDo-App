import 'package:flutter/material.dart';

class YesterdaysTodos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Yesterdays Todos page')),
      body: Text("All the (T + 1 Day todos) goes here"),
    );
  }
}
