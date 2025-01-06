import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/data/data.dart';
import 'package:gap/gap.dart';
import 'package:todo_app/utils/extensions.dart';

class TaskTitle extends StatelessWidget {
  const TaskTitle({super.key, required this.task});
  final Task task;

  @override
  Widget build(BuildContext context) {
    final color = context.colorScheme;
    final style = context.textTheme;
    final double iconOpacity = task.isCompleted ? 0.3 : 0.5;
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        top: 10,
        bottom: 10,
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: task.category.color.withOpacity(0.3),
                border: Border.all(width: 2, color: task.category.color)),
            child: Center(
              child: Icon(
                task.category.icon,
                color: task.category.color.withOpacity(iconOpacity),
              ),
            ),
          ),
          const Gap(16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(task.title), Text(task.time)],
            ),
          ),
          Checkbox(value: task.isCompleted, onChanged: (value) {})
        ],
      ),
    );
  }
}
