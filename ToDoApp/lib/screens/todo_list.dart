import 'package:flutter/material.dart';
import '../api/todolist_api.dart';
import '../models/todo_model.dart';

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => new _TodoListState();
}

class _TodoListState extends State<TodoList> {
    
  List<String> _todoItems = [];
  @override
  void initState(){
      super.initState();
      TodoListApi().readTodos().then((data){
          setState((){
              if(data != null ){
                  _todoItems.add('$data');
              }else{
                  _todoItems.add('No ToDos for now');
              }
              
          });
      });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Todo List 1')),
      //generating the todo list
      body: _buildTodoList(),

      floatingActionButton: new FloatingActionButton(
          //generate screen to add ToDo item to the _todoItems
          onPressed: _addToDoItemScreen,
          tooltip: 'Add task',
          child: new Icon(Icons.add)),
    );
  }

  Widget _buildTodoList() {
    return new ListView.builder(
      itemBuilder: (context, index) {
        if (index < _todoItems.length) {
          return _buildTodoItem(_todoItems[index], index);
        }
      },
    );
  }

  // Build a single todo item
  Widget _buildTodoItem(String todoText, int index) {
    return new ListTile(title: new Text(todoText), onTap: () => _promptRemoveTodoItem(index));
  }

  void _addToDoItemScreen() {
    // Push this page onto the stack
    Navigator.of(context).push(
        // MaterialPageRoute will automatically animate the screen entry, as well
        // as adding a back button to close it
        new MaterialPageRoute(builder: (context) {
      return new Scaffold(
          appBar: new AppBar(title: new Text('Add a new task')),
          body: new TextField(
            autofocus: true,
            textInputAction: TextInputAction.go,
            onSubmitted: (val) {
              _addTodoItem(val);
              TodoListApi().writeTodo(val);
              Navigator.pop(context); // Close the add todo screen
            },
            decoration: new InputDecoration(hintText: 'Enter something to do...', contentPadding: const EdgeInsets.all(16.0)),
          ));
    }));
  }

  // _addTodoItem vr-2
  void _addTodoItem(String task) {
    // Only add the task if the user actually entered something
    if (task.length > 0) {
      setState(() => _todoItems.add(task));
    }
  }

  // Much like _addTodoItem, this modifies the array of todo strings and
// notifies the app that the state has changed by using setState
  void _removeTodoItem(int index) {
    setState(() => _todoItems.removeAt(index));
  }

  // Show an alert dialog asking the user to confirm that the task is done
  void _promptRemoveTodoItem(int index) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return new AlertDialog(title: new Text('Mark "${_todoItems[index]}" as done?'), actions: <Widget>[
            new TextButton(child: new Text('CANCEL'), onPressed: () => Navigator.of(context).pop()),
            new TextButton(
                child: new Text('MARK AS DONE'),
                onPressed: () {
                  _removeTodoItem(index);
                  Navigator.of(context).pop();
                })
          ]);
        });
  }
}
