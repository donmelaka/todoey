import 'package:flutter/material.dart';
import 'package:todoey_flutter/model/task_list.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15),
      child: ListView.builder(
          itemCount: context.watch<Tasks>().taskList.length,
          itemBuilder: (ctx, index) {
            return TaskTile(task: context.watch<Tasks>().taskList[index]);
          }),
    );
  }
}
