import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter/Models/TasksDataProvider.dart';

class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    String newTask;
    return Container(
      color: Color(0xff757575),
      child: Container(
        height: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20),
            Text('Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                   color: Colors.lightBlueAccent,
              ),),
            Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700
                ),
                onChanged: (newText){
                  newTask =  newText;
                },
              ),
            ),

            Container(
              padding: EdgeInsets.only(left: 20,right: 20),
              child: FlatButton(
                onPressed: (){
                 Provider.of<TaskDataProvider>(context, listen: false).addNewTask(newTask);
                 Navigator.pop(context);
                },
                child: Text('Add',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white
                ),),
              color: Colors.lightBlueAccent,),
            )
          ],
        ),
      ),
    );
  }
}
