import 'package:flutter/cupertino.dart';
import 'package:todo_app/utils/extensions.dart';

class CommonContainer extends StatelessWidget {
  const CommonContainer({super.key, this.child, this.height});
  final Widget? child;
  final double? height;


  @override
  Widget build(BuildContext context) {
    final deviceSize = context.deviceSize;


    return  Container(
        width: deviceSize.width,
        height: height,
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
    color: context.colorScheme.primaryContainer,
    ),
    child:child);
  }
}
