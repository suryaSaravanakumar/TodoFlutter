import 'package:flutter/material.dart';

class TaskTileCell extends StatefulWidget {
  @override
  _TaskTileCellState createState() => _TaskTileCellState();
}

class _TaskTileCellState extends State<TaskTileCell> {
  var isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
          'This is list view',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null
        ),
      ),
      trailing: TaskCheckBox(
          checkBoxState: isChecked,
          //This is call back function (like our baby closure)
          checkBoxStateChanged: (bool newValue){
            setState(() {
              isChecked =  newValue;
            });
          }
      ),
    );
  }
}


class TaskCheckBox extends StatelessWidget {
  final bool checkBoxState;
  final Function checkBoxStateChanged;

 TaskCheckBox({this.checkBoxState, this.checkBoxStateChanged});

  @override
  Widget build(BuildContext context) {
    return  Checkbox(
      value: checkBoxState,
      onChanged: checkBoxStateChanged
    );
  }
}

