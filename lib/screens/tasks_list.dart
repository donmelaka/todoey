import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, bool> tasks = {
      'Buy milk': false,
      'Buy eggs': false,
      'Buy bread': true,
      'Buy bread1': true,
      'Buy bread2': true,
      'Buy bread3': true,
      'Buy bread4': true,
      'Buy bread5': true,
      'Buy bread6': true,
      'Buy bread7': true,
      'Buy bread8': true,
      'Buy bread88': true,
      'Buy bread88': true,
      'Buy bread888': true,
      'Buy bread55': true,
      'Buy bread555': true,
      'Buy bread5555': true,
      'Buy bread33': true,
      'Buy bread333': true,
      'Buy bread22': true,
      'Buy bread66': true,
      'Buy bread777': true,
    };

    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
        ),
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {},
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
                  '${tasks.length} Tasks',
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
              child: ListView(
                children: [
                  ...tasks.keys.map((key) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            key,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          margin: EdgeInsets.only(left: 30),
                          width: 200,
                        ),
                        Container(
                          child:
                              Checkbox(value: tasks[key], onChanged: (val) {}),
                        )
                      ],
                    );
                  }).toList(growable: false)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
