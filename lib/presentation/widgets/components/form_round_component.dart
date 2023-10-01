import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FormRoundComponent extends StatelessWidget {
  const FormRoundComponent({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) => Container(
      padding: EdgeInsets.only(top: 20.h),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40))),
      child: child);
}
