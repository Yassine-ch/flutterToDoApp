import 'package:flutter/cupertino.dart';
import 'package:to_do_list_app/main.dart';
import 'package:to_do_list_app/model/todo.dart';
class TodosProvider extends ChangeNotifier {
List<Todo>_todos =[
  Todo(
    createdTime: DateTime.now(),
    title: 'Walk the dog',
    description: 'jsjabhdavskakds',
  ),
  Todo(
      createdTime: DateTime.now(),
      title: 'Reading',
      description: 'jsjabhdavskakds',
  ),
  Todo(
      createdTime: DateTime.now(),
      title: 'coding',
      description: 'jsjabhdavskakds',
  ),
  Todo(
      createdTime: DateTime.now(),
      title: 'eat',
      description: 'jsjabhdavskakds',
  ),
  Todo(
    createdTime: DateTime.now(),
    title: 'eat',
    description: 'jsjabhdavskakds',
  ),
  Todo(
    createdTime: DateTime.now(),
    title: 'eat',
    description: 'jsjabhdavskakds',
  ),
  Todo(
    createdTime: DateTime.now(),
    title: 'eat',
    description: 'jsjabhdavskakds',
  ),
  Todo(
    createdTime: DateTime.now(),
    title: 'eat',
    description: 'jsjabhdavskakds',
  ),
];
List<Todo> get todos => _todos.where((todo) =>todo.isDone==false ).toList();
List<Todo> get todosCompleted => _todos.where((todo) => todo.isDone == true).toList();
void addTodo(Todo todo){
  _todos.add(todo);
  notifyListeners();
}
void removeTodo(Todo todo){
  _todos.remove(todo);
  notifyListeners();
}
bool toggleTodoStatus (Todo todo){
  todo.isDone=!todo.isDone;
  notifyListeners();
  return todo.isDone;
}
void updateTodo(Todo todo, String title, String description){
  todo.title=title;
  todo.description=description;
  notifyListeners();
}

}