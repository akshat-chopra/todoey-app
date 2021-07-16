import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class TaskListTile extends StatelessWidget {


  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function longPressCallback;
  TaskListTile({this.isChecked,this.taskTitle,this.checkboxCallback,this.longPressCallback});


  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(

      value: isChecked,
      onChanged: checkboxCallback,


      title: Text('$taskTitle'
        ,
        style: TextStyle(color: Colors.white,decoration: isChecked? TextDecoration.lineThrough : null),

      ),
      activeColor: Color.fromRGBO(235, 5, 255, 1),



    );
  }
}
