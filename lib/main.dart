import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/Model/mdoelProvider.dart';
import 'package:todoapp/Screens/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskProvider>(
      create: (context) => TaskProvider(),
      child: MaterialApp(
        title: 'TodoApp',
        home: HomeScreen(),
      ),
    );
  }
}
