import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list_app/page/home_page.dart';
import 'package:to_do_list_app/provider/todos.dart';

void main() =>runApp(MyApp());
class MyApp extends StatelessWidget {
 static final String title = 'TODO APP';

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider( create: (context) => TodosProvider(),
 child:MaterialApp(

 title:title,
 theme:ThemeData(
     primarySwatch: Colors.blueGrey,
 scaffoldBackgroundColor: Color(0xFFf6f5ee),
     ),
  home:HomePage(),
 ),
  );
}
