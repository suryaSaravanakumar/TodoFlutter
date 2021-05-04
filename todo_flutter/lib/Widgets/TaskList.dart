import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'TaskListTile.dart';
import 'package:todo_flutter/Models/TasksDataProvider.dart';

class TaskLists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskDataProvider>(
      builder: (context,taskData,child) {
        return ListView.builder(itemBuilder: (context, index) {
          return TaskTileCell(
            taskTitle: taskData.tasks[index].name,
            isChecked: taskData.tasks[index].isDone,
            taskStatusChanged: (bool value) {
              // setState(() {
              taskData.updateTask(
                  currentIndex: index, newValue: value);
              // });
            },
          );
        }, itemCount: taskData.tasks.length,);
      },
    );
  }
  }