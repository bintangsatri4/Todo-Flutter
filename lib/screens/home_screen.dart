import 'package:flutter/material.dart';
import 'package:todo_app/data/data.dart';
import 'package:todo_app/utils/extensions.dart';
import 'package:gap/gap.dart';
import 'package:todo_app/utils/utils.dart';
import 'package:todo_app/widgets/common_container.dart';
import 'package:todo_app/widgets/display_list_of_tasks.dart';
import 'package:todo_app/widgets/display_white_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    final deviceSize = context.deviceSize;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: deviceSize.height * 0.3,
                width: deviceSize.width,
                color: colors.primary,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DisplayWhiteText(
                      text: "Jan 05, 2025",
                      size: 25,
                      fontWeight: FontWeight.normal,
                    ),
                    Gap(10),
                    DisplayWhiteText(
                      text: "My Todo",
                      size: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
              top: 140,
              left: 0,
              right: 0,
              child: SafeArea(
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const DisplayListOfTasks(tasks: [
                        Task(
                            title: 'title',
                            note: 'note',
                            time: '10 2025',
                            date: 'January',
                            isCompleted: false,
                            category: TaskCategories.work)
                      ]),
                      const Gap(20),
                      Text(
                        'Completed',
                        style: context.textTheme.headlineMedium,
                      ),
                      const Gap(20),
                      const DisplayListOfTasks(
                          tasks: [], isCompletedTasks: true),
                      const Gap(20),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              colors.primary, // Warna latar belakang tombol
                          foregroundColor:
                              colors.onPrimary, // Warna teks tombol
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: DisplayWhiteText(text: 'Add New Task'),
                        ),
                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
