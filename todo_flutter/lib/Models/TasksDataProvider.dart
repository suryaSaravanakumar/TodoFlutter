
import 'package:flutter/foundation.dart';
import 'package:todo_flutter/Widgets/TaskList.dart';
import 'Task.dart';

class TaskDataProvider extends ChangeNotifier{

  List<Task> tasks = [
    Task(name: 'Get water Bottels'),
    Task(name: 'See doggy'),
    Task(name: 'Call manager')
  ];

  void addNewTask(String taskName){
    tasks.add(Task(name: taskName));
    notifyListeners();
  }

  void updateTask({bool newValue, int currentIndex}){
    tasks[currentIndex].isDone = newValue;
    notifyListeners();
  }
}

