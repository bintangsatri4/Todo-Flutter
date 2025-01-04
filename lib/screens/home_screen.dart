import 'package:flutter/material.dart';
import 'package:todo_app/utils/extensions.dart';
import 'package:gap/gap.dart';
import 'package:todo_app/widgets/common_container.dart';
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
              top: deviceSize.height * 0.3 - 70,
              left: 0,
              right: 0,
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CommonContainer(
                    child:ListView.builder(
                          shrinkWrap: true,
                          itemCount: 8,
                          padding: EdgeInsets.zero,
                          itemBuilder: (ctx, index) {
                            return Text('Your Todo');
                          }),
                    ),

                    const Gap(20),
                    Text('Completed',style: context.textTheme.headlineMedium,
                    ),
                    Container(
                      width: deviceSize.width,
                      height: deviceSize.height * 0.25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: colors.primaryContainer,
                      ),
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 8,
                          padding: EdgeInsets.zero,
                          itemBuilder: (ctx, index) {
                            return Text('Your Todo');
                          }),
                    ),
                    const Gap(20),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: colors.primary, // Warna latar belakang tombol
                        foregroundColor: colors.onPrimary, // Warna teks tombol
                      ),
                      child: const Padding(
                        padding:  EdgeInsets.all(8.0),
                        child:  DisplayWhiteText(text: 'Add New Task'),
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
