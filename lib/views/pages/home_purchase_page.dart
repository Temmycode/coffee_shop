import 'package:coffee_shop/controllers/constants/coffee_types.dart';
import 'package:coffee_shop/controllers/setup/colors/app_colors.dart';
import 'package:coffee_shop/controllers/setup/text/small_text.dart';
import 'package:coffee_shop/views/extensions/dimension.dart';
import 'package:coffee_shop/views/widgets/coffee_type_tabviews.dart';
import 'package:coffee_shop/views/widgets/custom_app_bar.dart';
import 'package:coffee_shop/views/widgets/promo_view_container.dart';
import 'package:flutter/material.dart';

class HomePurchasePage extends StatefulWidget {
  const HomePurchasePage({super.key});

  @override
  State<HomePurchasePage> createState() => _HomePurchasePageState();
}

class _HomePurchasePageState extends State<HomePurchasePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(
      length: coffeTypes.length,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        minimum: EdgeInsets.only(top: 44.h(context)),
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              const CustomAppBar(),
              SizedBox(
                height: 28.h(context),
              ),
              const SearchBar(),
              SizedBox(
                height: 24.h(context),
              ),
              const PromoViewContainer(),
              SizedBox(
                height: 24.h(context),
              ),
              TabBar(
                tabs: coffeTypes
                    .map(
                      (coffee) => Tab(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              12.h(context),
                            ),
                            color: AppColors.brown,
                          ),
                          child: SmallText(
                            text: coffee,
                            size: 14.h(context),
                            weight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              )
            ];
          },

          // ITEM CATEOGRY
          // data here should be loaded form the provider and the loading screen should be displayed
          // the loading screening is intended to be a shimmer of the current UI
          body: TabBarView(
            controller: _tabController,
            children: coffeTypes
                .map(
                  (item) =>
                      // passing the category to the grid view to display the data in the different categories
                      CoffeeTypeTabviews(
                    category: item,
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
