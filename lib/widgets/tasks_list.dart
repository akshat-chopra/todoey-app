import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import 'tasks_list_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class TaskList extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData,child){
        return ListView.builder(

          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return GestureDetector(
              onLongPress: (){
                taskData.deleteTask(task);
              },
              child: TaskListTile(
                  taskTitle: taskData.tasks[index].name,
                  isChecked:taskData.tasks[index].isDone,
                  checkboxCallback :(checkBoxState) {
                    taskData.updateTask(taskData.tasks[index]);
                  }),
            );
          },
          itemCount:taskData.taskCount,
        );
      },

    );
  }
}
