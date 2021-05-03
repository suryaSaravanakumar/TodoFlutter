import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left:30,right: 30,top: 60,bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              CircleAvatar(
                child: Icon(Icons.list, size: 30, color: Colors.lightBlueAccent),
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
                  fontWeight: FontWeight.w700
                ),
              ),
                Text('12 Tasks',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16
                  ),
                ),

            ],)
            ,),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
              ),
            ),
          )
        ],
      )
    );
  }
}