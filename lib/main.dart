import 'package:flutter/material.dart';
import 'package:to_do_list_app/page/home_page.dart';

void main() =>runApp(MyApp());
class MyApp extends StatelessWidget {
 static final String title = 'TODO APP';

  @override
  Widget build(BuildContext context) => MaterialApp(

 title:title,
 theme:ThemeData(
     primarySwatch: Colors.pink,
 scaffoldBackgroundColor: Color(0xFFf6f5ee),
     ),
  home:HomePage(),

  );
}
