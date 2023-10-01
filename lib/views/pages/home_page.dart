import 'package:coffee_shop/controllers/constants/pages.dart';
import 'package:coffee_shop/controllers/providers/home_page_current_index_provider.dart';
import 'package:coffee_shop/controllers/setup/app_images.dart';
import 'package:coffee_shop/controllers/setup/colors/app_colors.dart';
import 'package:coffee_shop/views/extensions/dimension.dart';
import 'package:coffee_shop/views/extensions/to_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(homePageCurrentIndexProvider);
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(
              24.h(context),
            ),
          ),
        ),
        child: Row(
          children: [
            GestureDetector(
              onTap: () =>
                  ref.read(homePageCurrentIndexProvider.notifier).state = 0,
              child: AppImages.home.toIcon(
                size: 20.h(context),
              ),
            ),
            GestureDetector(
              onTap: () =>
                  ref.read(homePageCurrentIndexProvider.notifier).state = 1,
              child: AppImages.likes.toIcon(
                size: 20.h(context),
              ),
            ),
            GestureDetector(
              onTap: () =>
                  ref.read(homePageCurrentIndexProvider.notifier).state = 2,
              child: AppImages.cart.toIcon(
                size: 20.h(context),
              ),
            ),
            GestureDetector(
              onTap: () =>
                  ref.read(homePageCurrentIndexProvider.notifier).state = 3,
              child: AppImages.notification.toIcon(
                size: 20.h(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
