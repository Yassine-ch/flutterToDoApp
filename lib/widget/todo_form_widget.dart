import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_list_app/main.dart';
class TodoFormWidget extends StatelessWidget {
  final String title;
  final String description;
  final ValueChanged<String> onChagedTitle;
  final ValueChanged<String> onChangedDescription;
  final VoidCallback onSavedToDo;

  const TodoFormWidget({Key key,
  this.title='',
  this.description='',
  @required this.onChagedTitle,
    @required this.onChangedDescription,
    @required this.onSavedToDo,
  }):super(key:key);

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        //calling a method to build the title
        buildTitle(),
        SizedBox(height: 8,),
        buildDescription(),
        SizedBox(height: 8,),
        buildButton(),

      ],
    ),
  );
Widget buildTitle()=>TextFormField(
  maxLines: 1,
  initialValue: title,
  onChanged:onChagedTitle ,
validator: (title){
    if(title.isEmpty){
      return 'The Title cannot be empty';
    }
     return null;

},
decoration: InputDecoration(
  border: UnderlineInputBorder(),
  labelText: 'Title',
),
);
Widget buildDescription()=>TextFormField(
  maxLines: 3,
  initialValue: description,
  onChanged: onChangedDescription,
  decoration: InputDecoration(
    border: UnderlineInputBorder(),
    labelText: 'Description',
  ),
);
Widget buildButton()=>SizedBox(
  width: double.infinity,
  child:   ElevatedButton(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(
  Colors.black
      ),
    ),
    onPressed: onSavedToDo,
    child: Text('SAVE'),
      ),
);

}
