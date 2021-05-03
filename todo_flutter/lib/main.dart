import 'package:flutter/material.dart';
import 'package:todo_flutter/Screens/TasksScreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: TasksScreen()
    );
  }
}
