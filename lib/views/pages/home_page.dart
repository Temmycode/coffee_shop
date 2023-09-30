import 'package:coffee_shop/controllers/constants/pages.dart';
import 'package:coffee_shop/controllers/providers/home_page_current_index_provider.dart';
import 'package:coffee_shop/controllers/setup/colors/app_colors.dart';
import 'package:coffee_shop/views/extensions/dimension.dart';
import 'package:flutter/cupertino.dart';
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
        child: const Row(
          children: [
            // TODO: FIX THE BOTTOM NAVIGATONS
            Icon(Icons.home),
            Icon(CupertinoIcons.heart_fill),
            Icon(Icons.shopping_bag),
            Icon(CupertinoIcons.bell_fill),
          ],
        ),
      ),
    );
  }
}
