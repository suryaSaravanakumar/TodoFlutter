import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter/Models/TasksDataProvider.dart';
import 'package:todo_flutter/Screens/TasksScreen.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TaskDataProvider(),
      child: MaterialApp(
          home: TasksScreen()
      ),
    );
  }
}
