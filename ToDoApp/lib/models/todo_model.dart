import 'package:meta/meta.dart';

class ToDoModel {
  final String text;

  const ToDoModel({
    @required this.text,
  });

  static ToDoModel fromJson(json) => ToDoModel(
        text: json['text'],
      );
}
