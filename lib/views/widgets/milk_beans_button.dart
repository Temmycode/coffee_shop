import 'package:coffee_shop/controllers/setup/colors/app_colors.dart';
import 'package:coffee_shop/views/extensions/dimension.dart';
import 'package:flutter/material.dart';

class MilkBeansButton extends StatelessWidget {
  final Widget icon;
  const MilkBeansButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 44.h(context),
      width: 44.w(context),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          14.h(context),
        ),
        color: AppColors.lightGrey,
      ),
      child: icon,
    );
  }
}
