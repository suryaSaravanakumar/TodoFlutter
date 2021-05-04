import 'package:flutter/material.dart';
import 'package:todo_flutter/Widgets/TaskList.dart';
import 'AddTaskScreen.dart';
import 'package:todo_flutter/Models/Task.dart';

class TasksScreen extends StatefulWidget {
  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {

   List<Task> tasks = [
    Task(name: 'Get water Bottels'),
    Task(name: 'See doggy'),
    Task(name: 'Call manager')
  ];

  @override
  Widget build(BuildContext context) {
    var taskCount = tasks.length;
    return Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightBlueAccent,
          child: Icon(Icons.add),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) => AddTaskScreen(addedNewTaskCallback: (newText){
                  setState(() {
                    if (newText != null){
                      tasks.add(Task(name: newText));
                    }

                  });
                  Navigator.pop(context);
                },));
          },
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding:
                  EdgeInsets.only(left: 30, right: 30, top: 60, bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    child: Icon(Icons.list,
                        size: 30, color: Colors.lightBlueAccent),
                    backgroundColor: Colors.white,
                    radius: 30,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Todo',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    '$taskCount Tasks',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: TaskLists(tasks: tasks,),
              ),
            )
          ],
        ));
  }
}
