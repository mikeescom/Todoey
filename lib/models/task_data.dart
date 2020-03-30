import 'package:flutter/foundation.dart';
import 'package:todoeyflutter/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [];

  int get taskCount {
    return _tasks.length;
  }

  String getTaskName(int index) {
    return _tasks[index].name;
  }

  bool getTaskState(int index) {
    return _tasks[index].isDone;
  }

  void addTask(String newTaskTitle) {
    _tasks.add(Task(
      name: newTaskTitle,
    ));
    notifyListeners();
  }
}