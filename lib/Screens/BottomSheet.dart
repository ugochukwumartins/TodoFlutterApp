// ignore_for_file: file_names, prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:todoapp/Model/mdoelProvider.dart';
import 'package:provider/provider.dart';

class BottomSheets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final taskmodel = Provider.of<TaskProvider>(context);
    String task = "";
    return Container(
      color: Color(0xff757575),
      child: Container(
        child: Column(
          children: <Widget>[
            Text(
              "Add Text",
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w800,
                fontSize: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
                right: 30,
              ),
              child: TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  task = value;
                },
              ),
            ),
            FlatButton(
              color: Colors.blue,
              onPressed: () {
                taskmodel.AddTask(task);
                Navigator.pop(context);
              },
              child: Text(
                "Add",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                ),
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
      ),
    );
  }
}
