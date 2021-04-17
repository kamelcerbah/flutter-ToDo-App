//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class AddTodo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text('Add a new task')),
        body: new TextField(
          autofocus: true,
          textInputAction: TextInputAction.go,
          onSubmitted: (val) {
              //Learn how to pass data to the todo list aka todays todo list 
          },
          decoration: new InputDecoration(hintText: 'Enter something to do...', contentPadding: const EdgeInsets.all(16.0)),
        ));
  }
}
