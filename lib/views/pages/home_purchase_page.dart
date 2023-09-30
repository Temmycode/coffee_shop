import 'package:coffee_shop/views/extensions/dimension.dart';
import 'package:flutter/material.dart';

class HomePurchasePage extends StatelessWidget {
  const HomePurchasePage({super.key});

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
              // promotions
              SliverToBoxAdapter(
                child: SizedBox(height: height * AppDimensions.height33),
              ),
              SliverPadding(
                padding: EdgeInsets.symmetric(
                  horizontal: width * AppDimensions.width35,
                ),
                sliver: SliverToBoxAdapter(
                  child: SizedBox(
                    height: height * AppDimensions.height192,
                    child: PageView.builder(
                      padEnds: true,
                      controller: _pageController,
                      itemCount: promotionConstants.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: PromotionContainer(
                            image: promotionConstants[index][0],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: height * AppDimensions.height36,
                ),
              ),
              // ITEM CATEGORY SECTIONS:
              SliverToBoxAdapter(
                child: Align(
                  alignment: Alignment.center,
                  child: TabBar(
                    labelStyle: const TextStyle(fontWeight: FontWeight.w700),
                    unselectedLabelStyle:
                        const TextStyle(fontWeight: FontWeight.w400),
                    labelColor: Colors.black,
                    indicatorColor: Colors.black,
                    indicatorWeight: 2,
                    isScrollable: true,
                    controller: _tabController,
                    tabs: itemCategoryConstant
                        .map(
                          (item) => Tab(
                            text: item,
                            // st
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(height: height * AppDimensions.height26),
              ),
            ];
          },

          // ITEM CATEOGRY
          // data here should be loaded form the provider and the loading screen should be displayed
          // the loading screening is intended to be a shimmer of the current UI
          body: TabBarView(
            controller: _tabController,
            children: itemCategoryConstant
                .map(
                  (item) =>
                      // passing the category to the grid view to display the data in the different categories
                      CategoryTabView(
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
