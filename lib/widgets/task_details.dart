import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/data/data.dart';

class TaskDetails extends StatelessWidget {
  const TaskDetails({super.key, required this.task});
  final Task task;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(210),
      child: Column(
        children: [Icon(Icons.abc_outlined)],
      ),
    );
  }
}
