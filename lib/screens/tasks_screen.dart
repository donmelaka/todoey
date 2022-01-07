import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoey_flutter/model/task.dart';
import 'package:todoey_flutter/widgets/task_list.dart';
import 'package:uuid/uuid.dart';

import 'add_task_screen.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  List<Task> tasks = [
    Task(
      id: Uuid(),
      taskName: 'Buy milk',
      isDone: false,
    ),
    Task(
      id: Uuid(),
      taskName: 'Buy eggs',
      isDone: false,
    ),
    Task(
      id: Uuid(),
      taskName: 'Buy bread',
      isDone: true,
    ),
    Task(
      id: Uuid(),
      taskName: 'Buy bread1',
      isDone: true,
    ),
    Task(
      id: Uuid(),
      taskName: 'Buy bread2',
      isDone: true,
    ),
  ];

  void toggleTaskState(Uuid id) {
    setState(() {
      tasks.firstWhere((element) => element.id == id).toggleIsDone();
    });
  }

  void addTask(Task task) {
    setState(() {
      tasks.add(task);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
        ),
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (ctx) {
              return AddTaskScreen(
                addTask: addTask,
              );
            },
          );
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 60,
              bottom: 30,
              left: 30,
              right: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                  ),
                  backgroundColor: Colors.white,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Todoey',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  '21 Tasks',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: TaskList(tasks: tasks, toggleTaskState: toggleTaskState),
            ),
          ),
        ],
      ),
    );
  }
}
