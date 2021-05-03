import 'package:flutter/material.dart';

class TaskTileCell extends StatelessWidget {
  const TaskTileCell({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('This is list view'),
      trailing: TaskCheckBox(),
    );
  }
}


class TaskCheckBox extends StatefulWidget {
  @override
  _TaskCheckBoxState createState() => _TaskCheckBoxState();
}

class _TaskCheckBoxState extends State<TaskCheckBox> {

  var isChecked = false;

  @override
  Widget build(BuildContext context) {
    return  Checkbox(
      value: isChecked,
      onChanged: (newValue){
        isChecked = newValue;
      },
    );
  }
}

