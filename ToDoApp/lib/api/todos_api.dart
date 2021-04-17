import 'dart:convert';
import 'package:flutter/material.dart';
import '../models/todo_model.dart';

class ToDosApi {
  static Future<List<ToDoModel>> getToDosLocally(BuildContext context) async {
    final assetBundle = DefaultAssetBundle.of(context);
    final body = await assetBundle.loadString('assets/todoitems.json');

    final data = json.decode(body);
    return data.map<ToDoModel>(ToDoModel.fromJson).toList();
  }
}
