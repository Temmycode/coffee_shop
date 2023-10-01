import 'package:coffee_shop/controllers/setup/colors/app_colors.dart';
import 'package:coffee_shop/controllers/setup/text/title_text.dart';
import 'package:coffee_shop/views/extensions/dimension.dart';
import 'package:flutter/material.dart';

class PromoIcon extends StatelessWidget {
  const PromoIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 26.h(context),
      width: 60.w(context),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          8.h(context),
        ),
        color: AppColors.red,
      ),
      child: TitleText(
        text: 'Promo',
        color: AppColors.white,
        size: 14.h(context),
      ),
    );
  }
}
