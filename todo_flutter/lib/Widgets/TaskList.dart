import 'package:flutter/material.dart';
import 'TaskListTile.dart';

class TaskLists extends StatelessWidget {
  const TaskLists({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTileCell()
      ],
    );
  }
}