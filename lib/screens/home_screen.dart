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
                      DisplayWhiteText(text: "May 4, 2025", size: 25,fontWeight: FontWeight.normal,),
                  Gap(10),
                  DisplayWhiteText(text: "My Todo", size: 50,fontWeight: FontWeight.bold,),

                    ],
                  ),
                ),
                
              )
            ],
          )
        ],
      ),
    );
  }
}
