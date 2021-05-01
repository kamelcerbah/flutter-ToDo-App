import 'package:path_provider/path_provider.dart';
import 'dart:io';

class TodoListApi {
  Future<String> get getLocalPath async {
    var folder = await getApplicationDocumentsDirectory();
    return folder.path;
  }

  Future<File> get getLocalFile async {
    String path = await getLocalPath;
    return File('$path/todoList.txt');
  }

  Future<File> writeTodo(String txt) async {
    File file = await getLocalFile;
    return file.writeAsString('$txt');
  }

  Future<String> readTodos() async {
    try {
      final file = await getLocalFile;
      String content = await file.readAsString();
      return content;
    } catch (e) {
      print('ERROR File not found to read from');
    }
  }
}
