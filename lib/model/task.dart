import 'package:uuid/uuid.dart';

class Task {
  final Uuid id;
  final String taskName;
  bool isDone;

  Task({required this.id, required this.taskName, this.isDone = false});

  void toggleIsDone() {
    isDone = !isDone;
    print('isDone is now $isDone');
  }
}
