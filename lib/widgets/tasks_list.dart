// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/taskdata.dart';
// import 'package:todoey/models/tasks.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            isChecked: taskData.Tasks[index].isDone,
            taskTitle: taskData.Tasks[index].task,
            checkboxCallback: () {
              taskData.updateTask(taskData.Tasks[index]);
            },
            longPressCallBack: () {
              taskData.deleteTask(taskData.Tasks[index]);
            },
          );
        },
        itemCount: taskData.Tasks.length,
      );
    });
  }
}
