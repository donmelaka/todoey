import 'package:flutter/material.dart';
import 'package:todoey_flutter/model/task.dart';

class TaskTile extends StatelessWidget {
  final Task task;
  final Function checkBoxFunction;

  const TaskTile(
      {required this.task,
      required this.checkBoxFunction});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        task.taskName,
        style: task.isDone
            ? TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.lineThrough,
              )
            : TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
      ),
      trailing: Checkbox(
          value: task.isDone,
          onChanged: (val) {
            checkBoxFunction(task.id);
          }),
    );
  }
}
