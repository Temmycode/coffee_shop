import 'package:coffee_shop/controllers/setup/app_images.dart';
import 'package:coffee_shop/controllers/setup/colors/app_colors.dart';
import 'package:coffee_shop/controllers/setup/text/small_text.dart';
import 'package:coffee_shop/views/extensions/dimension.dart';
import 'package:coffee_shop/views/extensions/to_icon.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(
          left: 16.w(context),
          right: 4.w(context),
        ),
        margin: EdgeInsets.only(
          left: 30.w(context),
          right: 30.w(context),
        ),
        height: 52.h(context),
        width: double.maxFinite,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            16.h(context),
          ),
          color: AppColors.searchBar,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                AppImages.search.toIcon(
                  size: 20.h(context),
                  color: AppColors.white,
                ),
                SizedBox(
                  width: 12.w(context),
                ),
                SmallText(
                  text: "Search coffee",
                  size: 14.h(context),
                  color: Colors.grey.shade500,
                ),
              ],
            ),
            Container(
              alignment: Alignment.center,
              height: 44.h(context),
              width: 44.w(context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  12.h(context),
                ),
                color: AppColors.brown,
              ),
              child: AppImages.settings.toIcon(
                size: 20,
                color: AppColors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
