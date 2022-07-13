import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_list_app/main.dart';
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
    content: Column(
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
          onSavedToDo:(){},
        ),
      ],

    ),
  );
}

