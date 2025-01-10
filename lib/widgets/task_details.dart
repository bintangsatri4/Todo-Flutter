import 'package:flutter/material.dart';
import 'package:todo_app/data/data.dart';
import 'package:todo_app/widgets/circle_container.dart';

class TaskDetails extends StatelessWidget {
  const TaskDetails({super.key, required this.task});
  final Task task;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleContainer(
              color: task.category.color.withOpacity(0.3),
              child: Icon(
                task.category.icon,
                color: task.category.color,
              ),
            ),
          ],
        ));
  }
}
