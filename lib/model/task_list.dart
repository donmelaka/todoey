import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/model/task.dart';
import 'package:uuid/uuid.dart';

class Tasks with ChangeNotifier {
  List<Task> _tasks = [
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
    _tasks.firstWhere((element) => element.id == id).toggleIsDone();
    notifyListeners();
  }

  List<Task> get taskList {
    return _tasks;
  }

  void addTask(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  void deleteTask(Uuid id) {
    _tasks.remove(_tasks.firstWhere((element) => element.id == id));
    notifyListeners();
  }
}
