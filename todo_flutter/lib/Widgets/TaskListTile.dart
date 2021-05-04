import 'package:flutter/material.dart';

class TaskTileCell extends StatelessWidget {

  final bool isChecked;
  final String taskTitle ;
  final Function taskStatusChanged;
  TaskTileCell({this.isChecked,this.taskTitle,this.taskStatusChanged});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: taskStatusChanged,
      )
    );
  }
}




