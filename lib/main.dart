import 'package:flutter/material.dart';
import 'package:todoish/models/task.dart';
import 'package:todoish/models/task_data.dart';
import 'package:todoish/screens/tasks_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    ),
  );
}
