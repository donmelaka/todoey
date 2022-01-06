import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskName;
  final bool isChecked;
  final Function checkBoxFunction;

  const TaskTile(
      {required this.taskName,
      required this.isChecked,
      required this.checkBoxFunction});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskName,
        style: isChecked
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
          value: isChecked,
          onChanged: (val) {
            checkBoxFunction();
          }),
    );
  }
}
