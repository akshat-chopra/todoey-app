import 'package:flutter/material.dart';
import 'package:todoey/widgets/tasks_list.dart';
import 'package:todoey/widgets/tasks_list_tile.dart';
import 'add_task_screen.dart';
import 'package:todoey/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
class TasksScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(52, 79, 161, 1),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(context: context,builder: (context)=> SingleChildScrollView(child: Container(
            padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
            child: AddTaskScreen(

            ),
          )));
        },
          backgroundColor: Color.fromRGBO(235, 5, 255, 1),
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          elevation: 100),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 30,
                  ),
                  backgroundColor: Color.fromRGBO(3, 25, 86, 1),
                  radius: 30,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'ToDoey',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 2,
                    shadows: [
                      Shadow(
                          color: Colors.white,
                          blurRadius: 2,
                          offset: Offset(1, 1)),
                    ],
                  ),
                ),
                Divider(),
                Text(
                  '${Provider.of<TaskData>(context).taskCount} Tasks',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 300,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(3, 25, 86, 1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: TaskList(),
            ),
          ),
        ],
      ),
    );
  }
}




