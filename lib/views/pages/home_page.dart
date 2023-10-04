import 'package:coffee_shop/controllers/constants/pages.dart';
import 'package:coffee_shop/controllers/providers/home_page_current_index_provider.dart';
import 'package:coffee_shop/controllers/setup/app_images.dart';
import 'package:coffee_shop/controllers/setup/colors/app_colors.dart';
import 'package:coffee_shop/views/extensions/dimension.dart';
import 'package:coffee_shop/views/extensions/to_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(homePageCurrentIndexProvider);
    return Scaffold(
      extendBody: true,
      backgroundColor: AppColors.background,
      body: pages[currentIndex],
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 10.w(context),
        ),
        height: 99.h(context),
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(
              24.h(context),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: CupertinoButton(
                onPressed: () =>
                    ref.read(homePageCurrentIndexProvider.notifier).state = 0,
                child: AppImages.home.toIcon(
                  size: 20.h(context),
                  color: currentIndex == 0
                      ? AppColors.brown
                      : Colors.grey.shade500,
                ),
              ),
            ),
            Expanded(
              child: CupertinoButton(
                onPressed: () =>
                    ref.read(homePageCurrentIndexProvider.notifier).state = 1,
                child: AppImages.likes.toIcon(
                  size: 20.h(context),
                  color: currentIndex == 1
                      ? AppColors.brown
                      : Colors.grey.shade500,
                ),
              ),
            ),
            Expanded(
              child: CupertinoButton(
                onPressed: () =>
                    ref.read(homePageCurrentIndexProvider.notifier).state = 2,
                child: AppImages.cart.toIcon(
                  size: 20.h(context),
                  color: currentIndex == 2
                      ? AppColors.brown
                      : Colors.grey.shade500,
                ),
              ),
            ),
            Expanded(
              child: CupertinoButton(
                onPressed: () =>
                    ref.read(homePageCurrentIndexProvider.notifier).state = 3,
                child: AppImages.notification.toIcon(
                  size: 20.h(context),
                  color: currentIndex == 3
                      ? AppColors.brown
                      : Colors.grey.shade500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
