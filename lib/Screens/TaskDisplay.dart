// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:todoapp/Model/TaskModel.dart';
import 'package:todoapp/Screens/TaskChild.dart';

class TaskDisplay extends StatefulWidget {
  TaskDisplay(this.taskmodel);
  final List<TaskModel> taskmodel;
  @override
  State<TaskDisplay> createState() => _TaskDisplayState();
}

class _TaskDisplayState extends State<TaskDisplay> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.taskmodel.length,
      itemBuilder: (context, index) {
        return TaskChild(
            title: widget.taskmodel[index].name,
            Ischecked: widget.taskmodel[index].IsApproved,
            onPress: (value) {
              setState(() {
                widget.taskmodel[index].toggle();
              });
            });
      },
    );
  }
}
