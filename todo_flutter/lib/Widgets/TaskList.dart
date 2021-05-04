import 'package:flutter/material.dart';
import 'package:todo_flutter/Models/Task.dart';
import 'TaskListTile.dart';

class TaskLists extends StatefulWidget {
  final List<Task> tasks ;
  TaskLists({this.tasks});

  @override
  _TaskListsState createState() => _TaskListsState();
}

class _TaskListsState extends State<TaskLists> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index) {
       return TaskTileCell(
         taskTitle: widget.tasks[index].name,
         isChecked: widget.tasks[index].isDone,
         taskStatusChanged: (bool newValue){
           setState(() {
             widget.tasks[index].isDone =  newValue;
           });
         },
       );
    },itemCount: widget.tasks.length,);
  }
}