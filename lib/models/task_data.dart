import 'package:flutter/material.dart';
import 'package:todoey_app/models/task.dart';

class TaskData extends ChangeNotifier{
  List<Task> task = [
    Task('bymilk'),
    Task('bybread'),
    Task('byeggs'),
  ];
  int get taskcount{
    return task.length;
  }

  void addTask(String newTasktitle){
    final task1= Task(newTasktitle);
    task.add(task1);
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }
  void deleteTask(Task task1){
    task.remove(task1);
    notifyListeners();
  }
}