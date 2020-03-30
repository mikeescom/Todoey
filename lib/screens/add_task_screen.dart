import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            SizedBox(
              height: 15.0,
            ),
            FlatButton(
              color: Colors.lightBlueAccent,
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                ),
              ),
              onPressed: () {
                Provider.of<TaskData>(context, listen: false)
                    .addTask(newTaskTitle);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
