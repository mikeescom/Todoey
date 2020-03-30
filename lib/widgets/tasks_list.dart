import 'package:flutter/cupertino.dart';
import 'package:todoeyflutter/models/task_data.dart';
import 'package:todoeyflutter/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              taskTitle: taskData.getTaskName(index),
              isChecked: taskData.getTaskState(index),
              checkboxCallback: (checkboxState) {
                taskData.updateTask(taskData.getTask(index));
              },
              longPressCallback: () {
                taskData.deleteTask(index);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
