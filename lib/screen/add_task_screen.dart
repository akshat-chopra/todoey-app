import 'package:flutter/material.dart';
import 'package:todoey/models/task_data.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task.dart';

class AddTaskScreen extends StatelessWidget {
  String newTaskTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 0, 0, 39),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          color: Color.fromRGBO(52, 79, 161, 1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              style: TextStyle(fontSize: 30, color: Colors.white),
              textAlign: TextAlign.center,

            ),
            TextField(
              style: TextStyle(
                color: Colors.white

              ),
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText){
                newTaskTitle = newText;
              },

            ),
            Divider(),

            FlatButton(
              onPressed: () {
               
                Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle);
                Navigator.pop(context);

              },
              color: Color.fromRGBO(3, 25, 86, 1),
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white),

              ),
            )
          ],
        ),
      ),
    );
  }
}
