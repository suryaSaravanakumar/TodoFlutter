import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter/Models/Task.dart';
import 'TaskListTile.dart';
import 'package:todo_flutter/Models/TasksDataProvider.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class TaskLists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskDataProvider>(
      builder: (context,taskData,child) {
        return ListView.builder(itemBuilder: (context, index) {
          return TaskTileCell(
            task: taskData.tasks[index],
            isChecked: taskData.tasks[index].isDone,
            taskStatusChanged: (bool value) {
              taskData.updateTask(
                  currentIndex: index, newValue: value);
            },
            onLongPressCallBack: (){
              // taskData.deleteTask(currentTask: taskData.tasks[index]);
              _onAlertButtonsPressed(context: context,currentTaskData:taskData, currentIndex: index);
            },
          );
        }, itemCount: taskData.tasks.length,);
      },
    );
  }

  // Alert with multiple and custom buttons
  _onAlertButtonsPressed({BuildContext context,TaskDataProvider currentTaskData,int currentIndex}) {
    Alert(
      context: context,
      type: AlertType.warning,
      title: "Do you want to delete this task ?",
      desc: '${currentTaskData.tasks[currentIndex].name}',
      buttons: [
        DialogButton(
          child: Text(
            "Yes",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          onPressed: () {
            currentTaskData.deleteTask(currentIndex: currentIndex);
            Navigator.pop(context);
          },
          color: Color.fromRGBO(0, 179, 134, 1.0),
        ),
        DialogButton(
          child: Text(
            "No",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          onPressed: () => Navigator.pop(context),
          gradient: LinearGradient(colors: [
            Color.fromRGBO(116, 116, 191, 1.0),
            Color.fromRGBO(52, 138, 199, 1.0),
          ]),
        )
      ],
    ).show();
  }
  }