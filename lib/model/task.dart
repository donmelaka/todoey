import 'package:flutter/material.dart';

class Task {
  final String taskName;
  bool isDone;

  Task({required this.taskName, this.isDone = false});

  void toggleIsDone() {
    isDone = !isDone;
    print('isDone is now $isDone');
  }
}
