import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoish/models/task.dart';
import 'package:todoish/models/task_data.dart';
import 'package:todoish/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemCount: taskData.taskCount,
          itemBuilder: (context, index) {
            return TaskTile(
                checkboxCallback: (checkboxState) {
                  // setState(() {
                  //   widget.tasks[index].toggleDone();
                  // });
                },
                isChecked: taskData.tasks[index].isDone,
                taskTitle: taskData.tasks[index].name);
          },
        );
      },
    );
  }
}
