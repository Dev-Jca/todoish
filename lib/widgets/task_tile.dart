import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoish/models/task_data.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool?)? checkboxCallback;
  final Function() onLongPress;

  TaskTile({
    Key? key,
    required this.onLongPress,
    required this.taskTitle,
    required this.isChecked,
    required this.checkboxCallback,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: ListTile(
        onLongPress: onLongPress,
        title: Text(
          taskTitle,
          style: TextStyle(
              decoration:
                  isChecked ? TextDecoration.lineThrough : TextDecoration.none,
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: checkboxCallback,
        ),
      ),
    );
  }
}
