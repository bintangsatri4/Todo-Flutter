import 'package:flutter/material.dart';
import 'package:todo_app/utils/extensions.dart';
import 'package:gap/gap.dart';
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
                child: const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DisplayWhiteText(
                        text: "May 4, 2025",
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
              ),
              Positioned(
                top: 130,
                  child: SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Container(
                      width: deviceSize.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: colors.primaryContainer,
                      ),
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 8,
                          padding: EdgeInsets.zero,
                          itemBuilder: (ctx, index) {
                            return Text('home');
                          }),
                    ),
                  ],
                ),
              ))
            ],
          )
        ],
      ),
    );
  }
}
