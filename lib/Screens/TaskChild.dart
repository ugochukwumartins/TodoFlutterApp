// ignore_for_file: file_names, prefer_const_constructors, non_constant_identifier_names, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'dart:ffi';

import 'package:flutter/material.dart';

class TaskChild extends StatelessWidget {
  TaskChild(
      {required this.Ischecked, required this.title, required this.onPress});
  final bool Ischecked;

  final String title;
  void Function(bool? isChecked) onPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          decoration: Ischecked == true ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        checkColor: Colors.blue,
        value: Ischecked,
        onChanged: onPress,
      ),
    );
  }
}
  // setState(() {
  //     Ischecked = check;
  //   });

/* class StandardCheckBox extends StatelessWidget {
  StandardCheckBox({this.checboxStates, required this.pres});
  final bool? checboxStates;
  final void Function(bool? check) pres;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      checkColor: Colors.blue,
      value: checboxStates,
      onChanged: pres,
    );
  }
}
 */