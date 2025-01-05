import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/data/data.dart';
import 'package:todo_app/utils/extensions.dart';
import 'package:gap/gap.dart';

import 'common_container.dart';

class DisplayListOfTasks extends StatelessWidget {
  const DisplayListOfTasks(
      {super.key, required this.tasks, this.isCompletedTasks = false});

  final List<Task> tasks;
  final bool isCompletedTasks;

  @override
  Widget build(BuildContext context) {
    final deviceSize = context.deviceSize;
    final height =
        isCompletedTasks ? deviceSize.height * 0.25 : deviceSize.width * 0.5;
    final emptyTaskMessage = isCompletedTasks
        ? 'There is no completed task yet'
        : 'There is no task to do';
    return CommonContainer(
      height: height,
      child: tasks.isEmpty
          ? Center(
              child: Text(emptyTaskMessage,
                  style: context.textTheme.headlineSmall),
            )
          : ListView.separated(
              shrinkWrap: true,
              itemCount: tasks.length,
              padding: EdgeInsets.only(
                left: 16,
                top: 10,
                bottom: 10,
              ),
              itemBuilder: (ctx, index) {
                final task = tasks[index];
                return Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: task.category.color.withOpacity(0.2),
                          border:
                              Border.all(width: 2, color: task.category.color)),
                      child: Center(
                        child: Icon(
                          task.category.icon,
                          color: task.category.color,
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
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Divider(
                  thickness: 1.5,
                );
              },
            ),
    );
  }
}
