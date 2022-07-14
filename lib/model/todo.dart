import 'package:flutter/cupertino.dart';
import 'package:to_do_list_app/main.dart';
class TodoField{
  //declartion d'une variable static
  static const created ='createdTime';
}
//classeTodo
class Todo {
  DateTime createdTime;
  String title;
  String id;
  String description;
  bool isDone;
  //creation d'un Construteur
  Todo
  ({
    @required this.createdTime,
    @required this.title,
    @required this.description='',
    @required this.id,
    @required this.isDone=false,
});
}

