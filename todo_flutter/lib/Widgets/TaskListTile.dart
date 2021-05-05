import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:todo_flutter/Models/Task.dart';
import 'package:todo_flutter/Models/TasksDataProvider.dart';

class TaskTileCell extends StatelessWidget {

  final bool isChecked;
  final Task task ;
  final Function taskStatusChanged;
  final Function onLongPressCallBack;
  TaskTileCell({this.isChecked,this.task,this.taskStatusChanged,this.onLongPressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        task.name,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: taskStatusChanged,
      ),
      onLongPress: onLongPressCallBack,
    );
  }


}




