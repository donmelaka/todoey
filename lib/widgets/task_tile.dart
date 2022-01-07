import 'package:flutter/material.dart';
import 'package:todoey_flutter/model/task.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/model/task_list.dart';


class TaskTile extends StatelessWidget {
  final Task task;

  TaskTile({required this.task});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: (){
        Provider.of<Tasks>(context, listen: false).deleteTask(task.id);
      },
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
            // context.watch<Tasks>().toggleTaskState(task.id);
            Provider.of<Tasks>(context, listen: false).toggleTaskState(task.id);
          }),
    );
  }
}
