// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, non_constant_identifier_names, must_be_immutable

import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function longPressCallBack;
  TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkboxCallback,
      required this.longPressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () {
        longPressCallBack();
      },
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked == true
              ? TextDecoration.lineThrough
              : TextDecoration.none,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: (newValue) {
          checkboxCallback();
        },
      ),
    );
  }
}

// class TaskCheckBox extends StatelessWidget {
//   final bool checkBoxState;
//   final Function toggleCheckBoxState;
//   TaskCheckBox(
//       {required this.checkBoxState, required this.toggleCheckBoxState});
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       value: checkBoxState,
//       onChanged: (newValue) {
//         toggleCheckBoxState();
//       },
//     );
//   }
// }
