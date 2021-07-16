import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

import 'dart:collection';
class TaskData extends ChangeNotifier{
  List<Task> _tasks = [
    Task(name: 'buy milk'),
    Task(name: 'Hell0'),
    Task(name: 'buy butter')
  ];
  int get taskCount{
    return _tasks.length;
  }
  void addTask(String newTaskTitle){
    final task =Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }
  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }
  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }
  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }


}