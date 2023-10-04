import 'package:coffee_shop/controllers/setup/app_images.dart';
import 'package:coffee_shop/controllers/setup/colors/app_colors.dart';
import 'package:coffee_shop/controllers/setup/text/small_text.dart';
import 'package:coffee_shop/controllers/setup/text/title_text.dart';
import 'package:coffee_shop/views/extensions/dimension.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: AppColors.background,
      toolbarHeight: 60.h(context),
      elevation: 0.0,
      floating: true,
      scrolledUnderElevation: 0,
      titleSpacing: 0,
      title: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 30.w(context),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // LOCATION OF THE USER
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SmallText(
                  text: "Location",
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 4.h(context),
                ),

                // THE MAIN LOCATION
                TitleText(
                  text: "Blizen, Tanjungbalai",
                  size: 14.h(context),
                  color: AppColors.brown,
                )
              ],
            ),

            //  USER AVATAR IMAGE
            ClipRRect(
              borderRadius: BorderRadius.circular(14.h(context)),
              child: Image.asset(
                AppImages.user,
                height: 44.h(context),
                width: 44.w(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
