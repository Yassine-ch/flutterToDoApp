import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list_app/main.dart';
import 'package:to_do_list_app/model/todo.dart';
import 'package:to_do_list_app/provider/todos.dart';
import 'package:to_do_list_app/widget/todo_form_widget.dart';
class AddTodoDialogWidget extends StatefulWidget {


  @override
  _AddTodoDialogWidgetState createState() => _AddTodoDialogWidgetState();
}

class _AddTodoDialogWidgetState extends State<AddTodoDialogWidget> {
  final _formKey = GlobalKey<FormState>();
  String title='';
  String description ='';
  @override
  Widget build(BuildContext context)=> AlertDialog(
    content: Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Add ToDo',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 8,),
          TodoFormWidget(
            onChagedTitle:(title)=>setState(()=>this.title=title),
            onChangedDescription:(description)=>setState(()=>this.description=description),
            onSavedToDo: addTodo,
          ),
        ],

      ),
    ),
  );
  void addTodo(){
    final isValid=_formKey.currentState.validate();
    if(!isValid){
      return;
    }
      else{
        final todo =Todo(
          id: DateTime.now().toString(),
          title: title,
          description: description,
          createdTime: DateTime.now(),
        );
        final provider =Provider.of<TodosProvider>(context , listen :false);
        provider.addTodo(todo);
        Navigator.of(context).pop();
    }


  }
}

