// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

class TaskChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("testing"),
      trailing: Checkbox(
        value: false,
        onChanged: null,
      ),
    );
  }
}
