// ignore_for_file: file_names, prefer_final_fields, unused_field, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:todoapp/Model/TaskModel.dart';

class TaskProvider extends ChangeNotifier {
  List<TaskModel> _taskmodel = [
    TaskModel(name: "Food"),
    TaskModel(name: "Meat"),
    TaskModel(name: "Rice"),
    TaskModel(name: "Foodes"),
  ];

  List<TaskModel> get taskmodel => _taskmodel;
  void AddTask(String data) {
    final task = TaskModel(name: data);
    _taskmodel.add(task);
    notifyListeners();
  }

  void Tasktogle(TaskModel task) {
    task.toggle();
    notifyListeners();
  }

  void DeletTask(TaskModel task) {
    _taskmodel.remove(task);
    notifyListeners();
  }
}
