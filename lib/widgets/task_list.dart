import 'package:flutter/material.dart';
import 'package:todoey_flutter/model/task.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  final List<Task> tasks;
  final Function toggleTaskState;

  const TaskList({required this.tasks, required this.toggleTaskState});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15),
      child: ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (ctx, index) {
            return TaskTile(
              task: tasks[index],
              checkBoxFunction: toggleTaskState,
            );
          }),
    );
  }

}

