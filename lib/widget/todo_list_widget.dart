import 'package:flutter/cupertino.dart';
import 'package:to_do_list_app/main.dart';
import 'package:to_do_list_app/model/todo.dart';
import 'package:to_do_list_app/widget/todo_widget.dart';
class TodoListWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return TodoWidget(
      todo:Todo(createdTime: DateTime.now(), title: 'Footing ::::', description: '/*/*//*/',
      ),
    );
  }
}
