// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, deprecated_member_use, unused_local_variable, avoid_print, must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/taskdata.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController taskController = TextEditingController();
    late String newTextTitle;
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12.0),
            topRight: Radius.circular(12.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.lightBlueAccent,
                  fontWeight: FontWeight.w400,
                ),
              ),
              // SizedBox(
              //   height: 5.0,
              // ),
              TextField(
                controller: taskController,
                textAlign: TextAlign.center,
                autofocus: true,
                onChanged: (value) {
                  newTextTitle = value;
                },
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.lightBlueAccent,
                      width: 4.0,
                    ),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.lightBlueAccent,
                      width: 4.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              FlatButton(
                onPressed: () {
                  Provider.of<TaskData>(context, listen: false)
                      .addTask(newTextTitle);
                  Navigator.pop(context);
                },
                child: Text(
                  'Add',
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                ),
                color: Colors.lightBlueAccent,
                height: 50.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Widget AddTaskScreen(BuildContext context, Function addTask) {
//   TextEditingController taskController = TextEditingController();
//   return Container(
//     color: Color(0xff757575),
//     child: Container(
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(12.0),
//           topRight: Radius.circular(12.0),
//         ),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Text(
//               'Add Task',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontSize: 30.0,
//                 color: Colors.lightBlueAccent,
//                 fontWeight: FontWeight.w400,
//               ),
//             ),
//             // SizedBox(
//             //   height: 5.0,
//             // ),
//             TextField(
//               controller: taskController,
//               textAlign: TextAlign.center,
//               autofocus: true,
//               onChanged: (value) {},
//               decoration: InputDecoration(
//                 focusedBorder: UnderlineInputBorder(
//                   borderSide: BorderSide(
//                     color: Colors.lightBlueAccent,
//                     width: 4.0,
//                   ),
//                 ),
//                 enabledBorder: UnderlineInputBorder(
//                   borderSide: BorderSide(
//                     color: Colors.lightBlueAccent,
//                     width: 4.0,
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 30.0,
//             ),
//             FlatButton(
//               onPressed: () {
//                 addTask(taskController.text);
//                 print(taskController.text);
//                 Navigator.pop(context);
//               },
//               child: Text(
//                 'Add',
//                 style: TextStyle(
//                   fontSize: 25.0,
//                   color: Colors.white,
//                 ),
//               ),
//               color: Colors.lightBlueAccent,
//               height: 50.0,
//             ),
//           ],
//         ),
//       ),
//     ),
//   );
// }
