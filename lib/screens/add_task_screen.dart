import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoish/models/task.dart';
import 'package:todoish/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen({Key? key}) : super(key: key);
  String? newTaskText;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30,
              ),
            ),
            TextField(
              onChanged: ((value) {
                newTaskText = value;
              }),
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            MaterialButton(
              onPressed: () {
                Provider.of<TaskData>(context, listen: false)
                    .updateTaskList(newText: newTaskText!);
                Navigator.pop(context);
              },
              color: Colors.lightBlueAccent,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                child: const Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
