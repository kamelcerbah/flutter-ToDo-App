import 'package:flutter/material.dart';
import 'package:hello_world/screens/about.dart';
import 'package:hello_world/screens/home_page.dart';
import 'screens/todo_list.dart';
import 'package:hello_world/screens/finished_todos.dart';
import 'screens/yesterdays_todos.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //app root
  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: {
      '/': (context) => HomePage(),
      '/todolist': (context) => TodoList(),
      '/finishedtodos': (context) => FinishedTodos(),
      '/about': (context) => About(),
      '/yesterdaystodos': (context) => YesterdaysTodos(),
    });
  }
}
