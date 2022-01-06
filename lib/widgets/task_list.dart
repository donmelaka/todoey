import 'package:flutter/material.dart';
import 'package:todoey_flutter/model/task.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TaskList extends StatefulWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  void checkBoxFunction(T) {}
  List<Task> tasks = [
    Task(
      taskName: 'Buy milk',
      isDone: false,
    ),
    Task(
      taskName: 'Buy eggs',
      isDone: false,
    ),
    Task(
      taskName: 'Buy bread',
      isDone: true,
    ),
    Task(
      taskName: 'Buy bread1',
      isDone: true,
    ),
    Task(
      taskName: 'Buy bread2',
      isDone: true,
    ),
    Task(
      taskName: 'Buy bread3',
      isDone: true,
    ),
    Task(
      taskName: 'Buy bread4',
      isDone: true,
    ),
    Task(
      taskName: 'Buy bread5',
      isDone: true,
    ),
    Task(
      taskName: 'Buy bread6',
      isDone: true,
    ),
    Task(
      taskName: 'Buy bread7',
      isDone: true,
    ),
    Task(
      taskName: 'Buy bread8',
      isDone: true,
    ),
    Task(
      taskName: 'Buy bread88',
      isDone: true,
    ),
    Task(
      taskName: 'Buy bread88',
      isDone: true,
    ),
    Task(
      taskName: 'Buy bread888',
      isDone: true,
    ),
    Task(
      taskName: 'Buy bread55',
      isDone: true,
    ),
    Task(
      taskName: 'Buy bread555',
      isDone: true,
    ),
    Task(taskName: 'Buy bread5555', isDone: true),
    Task(
      taskName: 'Buy bread33',
      isDone: true,
    ),
    Task(
      taskName: 'Buy bread333',
      isDone: true,
    ),
    Task(
      taskName: 'Buy bread22',
      isDone: true,
    ),
    Task(
      taskName: 'Buy bread66',
      isDone: true,
    ),
    Task(
      taskName: 'Buy bread777',
      isDone: true,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15),
      child: ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (ctx, index) {
            return TaskTile(
              taskName: tasks[index].taskName,
              isChecked: tasks[index].isDone,
              checkBoxFunction: () {
                setState(() {
                  tasks[index].toggleIsDone() ;
                });
              },
            );
          }),
    );
  }
}
