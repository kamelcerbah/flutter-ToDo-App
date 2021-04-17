import 'package:flutter/material.dart';
import 'todo_list.dart';
import 'add_todo.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        drawer:Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Side menu',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/cover.jpg'))),
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Todays ToDos'),
            onTap: () => {Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => TodoList(),
              )),},
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Yesterdays ToDos'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Finished ToDos'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('About'),
            onTap: () => {Navigator.of(context).pop()},
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
                builder: (BuildContext context) => AddTodo(),
              )),
              child: Column(
                // Replace with a Row for horizontal icon + text
                children: <Widget>[
                  Icon(
                    Icons.add_circle_rounded,
                    size: 150,
                  ),
                  Text("Add Todo"),
                ],
              ),
            ),
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
              onPressed: () => {},
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
              onPressed: () => {},
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
              onPressed: () => {},
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
