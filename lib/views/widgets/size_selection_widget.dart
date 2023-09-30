import 'package:coffee_shop/controllers/setup/colors/app_colors.dart';
import 'package:coffee_shop/controllers/setup/text/small_text.dart';
import 'package:coffee_shop/views/extensions/dimension.dart';
import 'package:flutter/material.dart';

class SizeSelectionWidget extends StatelessWidget {
  final bool active;
  final String text;
  const SizeSelectionWidget({
    super.key,
    required this.active,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Ink(
      height: 43.h(context),
      width: 96.w(context),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          12.h(context),
        ),
        color: active ? AppColors.lightBrown : Colors.white,
        border: Border.all(
          color: active ? AppColors.brown : Colors.grey,
        ),
      ),
      child: Center(
        child: SmallText(
          text: text,
          size: 14.h(context),
          color: active ? AppColors.brown : Colors.black,
        ),
      ),
    );
  }
}
