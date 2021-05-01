import 'package:flutter/material.dart';
import 'todo_list.dart';
//import 'add_todo.dart';
import 'about.dart';
import 'finished_todos.dart';
import 'yesterdays_todos.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text(
                  'Side menu',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                decoration: BoxDecoration(color: Colors.blue, image: DecorationImage(fit: BoxFit.fill, image: AssetImage('assets/images/cover.jpg'))),
              ),
              ListTile(
                leading: Icon(Icons.add),
                title: Text('Add new ToDos'),
                onTap: () => {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => TodoList(),
                  )),
                },
              ),
              ListTile(
                leading: Icon(Icons.assignment_turned_in_rounded),
                title: Text('Finished ToDos'),
                onTap: () => {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => FinishedTodos(),
                    )),
                },
              ),
              ListTile(
                leading: Icon(Icons.contact_support_rounded),
                title: Text('About'),
                onTap: () => {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => About(),
                    )),
                },
              ),
            ],
          ),
        ),
        appBar: new AppBar(),
        body: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            new TextButton(
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => TodoList(),
              )),
              child: Column(
                // Replace with a Row for horizontal icon + text
                children: <Widget>[
                  Icon(
                    Icons.article_rounded,
                    size: 150,
                  ),
                  Text("Todays ToDos"),
                ],
              ),
            ),
            new TextButton(
              onPressed: () => {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => YesterdaysTodos(),
                  )),
              },
              child: Column(
                // Replace with a Row for horizontal icon + text
                children: <Widget>[
                  Icon(
                    Icons.assignment_late_rounded,
                    size: 150,
                  ),
                  Text("Yesterdays ToDos"),
                ],
              ),
            ),
            new TextButton(
              onPressed: () => {Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => FinishedTodos(),
                    )),},
              child: Column(
                // Replace with a Row for horizontal icon + text
                children: <Widget>[
                  Icon(
                    Icons.assignment_turned_in_rounded,
                    size: 150,
                  ),
                  Text("Finished ToDos"),
                ],
              ),
            ),
            new TextButton(
              onPressed: () => {Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => About(),
                    )),},
              child: Column(
                // Replace with a Row for horizontal icon + text
                children: <Widget>[
                  Icon(
                    Icons.contact_support_rounded,
                    size: 150,
                  ),
                  Text("About"),
                ],
              ),
            ),
          ],
        ));
  }
}
