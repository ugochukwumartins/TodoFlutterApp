// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

import 'package:todoapp/Model/mdoelProvider.dart';
import 'package:todoapp/Screens/TaskChild.dart';
import 'package:provider/provider.dart';

class TaskDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final taskmodel = Provider.of<TaskProvider>(context);
    return ListView.builder(
      itemCount: taskmodel.taskmodel.length,
      itemBuilder: (context, index) {
        return TaskChild(
          title: taskmodel.taskmodel[index].name,
          Ischecked: taskmodel.taskmodel[index].IsApproved,
          onPress: (value) {
            taskmodel.Tasktogle(taskmodel.taskmodel[index]);
          },
          delete: () {
            taskmodel.DeletTask(taskmodel.taskmodel[index]);
          },
        );
      },
    );
  }
}
