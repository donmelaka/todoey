import 'package:flutter/material.dart';
import 'package:todoey_flutter/model/task.dart';
import 'package:todoey_flutter/model/task_list.dart';
import 'package:uuid/uuid.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffa7E7E7E),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
        ),
        child: Container(
          margin: EdgeInsets.only(left: 40, right: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                'Add Task',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.lightBlueAccent),
              ),
              TextField(
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                  width: 4,
                  color: Colors.lightBlueAccent,
                ))),
                controller: _textEditingController,
              ),
              SizedBox(
                height: 20,
              ),
              FlatButton(
                onPressed: () {
                  Provider.of<Tasks>(context, listen: false).addTask(
                      Task(id: Uuid(), taskName: _textEditingController.text));
                  Navigator.pop(context);
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Add',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                color: Colors.lightBlueAccent,
              )
            ],
          ),
        ),
      ),
    );
  }
}
