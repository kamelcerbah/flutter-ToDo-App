import 'package:flutter/material.dart';
import 'package:hello_world/screens/about.dart';
import 'package:hello_world/screens/home_page.dart';
import 'screens/todo_list.dart';
import 'screens/finished_tasks.dart';
import 'screens/add_todo.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //Root of the app
  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: {
      '/': (context) => HomePage(),
      '/todolist': (context) => TodoList(),
      '/finishedtasks': (context) => FinishedTasks(),
      '/about': (context) => About(),
      '/addtodo':(context) => AddTodo(),
    });
  }
}
