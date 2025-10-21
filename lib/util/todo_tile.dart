import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChange;

  ToDoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChange
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        padding: EdgeInsets.all(24),
        // ignore: sort_child_properties_last
        child: Row(
          children: [
            Checkbox(value: taskCompleted, onChanged: onChange),

            // task name
            Text(taskName),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
