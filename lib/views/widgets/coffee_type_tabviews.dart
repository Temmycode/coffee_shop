import 'package:coffee_shop/controllers/constants/coffees.dart';
import 'package:coffee_shop/views/extensions/dimension.dart';
import 'package:coffee_shop/views/pages/detail_item_page.dart';
import 'package:coffee_shop/views/widgets/coffee_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class CoffeeTypeTabviews extends StatelessWidget {
  final String category;
  const CoffeeTypeTabviews({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.builder(
      padding: EdgeInsets.symmetric(
        horizontal: 30.w(context),
      ),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      crossAxisSpacing: 20.w(context),
      mainAxisSpacing: 20,
      itemCount:
          // this is for mock data alone : providers will handle the data form APIs
          (category == 'Cappuccino')
              ? cappuccinoCoffee.length
              : (category == 'Machiato')
                  ? machiatoCoffee.length
                  : (category == 'Latte')
                      ? latteCoffee.length
                      : (category == 'Americano')
                          ? americanoCoffee.length
                          : null,
      itemBuilder: (context, index) {
        return InkWell(
          borderRadius: BorderRadius.circular(
            16.h(context),
          ),
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailItemPage(
                heroTag: (category == 'Cappuccino')
                    ? cappuccinoCoffee[index][2]
                    : (category == 'Machiato')
                        ? machiatoCoffee[index][2]
                        : (category == 'Latte')
                            ? latteCoffee[index][2]
                            : (category == 'Americano')
                                ? americanoCoffee[index][1]
                                : null,
                imageUrl: (category == 'Cappuccino')
                    ? cappuccinoCoffee[index][2]
                    : (category == 'Machiato')
                        ? machiatoCoffee[index][2]
                        : (category == 'Latte')
                            ? latteCoffee[index][2]
                            : (category == 'Americano')
                                ? americanoCoffee[index][1]
                                : null,
                title: (category == 'Cappuccino')
                    ? cappuccinoCoffee[index][0]
                    : (category == 'Machiato')
                        ? machiatoCoffee[index][0]
                        : (category == 'Latte')
                            ? latteCoffee[index][0]
                            : (category == 'Americano')
                                ? americanoCoffee[index][1]
                                : null,
                subTitle: (category == 'Cappuccino')
                    ? cappuccinoCoffee[index][1]
                    : (category == 'Machiato')
                        ? machiatoCoffee[index][1]
                        : (category == 'Latte')
                            ? latteCoffee[index][1]
                            : (category == 'Americano')
                                ? americanoCoffee[index][1]
                                : null,
                rating: (category == 'Cappuccino')
                    ? cappuccinoCoffee[index][4]
                    : (category == 'Machiato')
                        ? machiatoCoffee[index][4]
                        : (category == 'Latte')
                            ? latteCoffee[index][4]
                            : (category == 'Americano')
                                ? americanoCoffee[index][4]
                                : null,
                noOfBuys: 230,
                price: (category == 'Cappuccino')
                    ? cappuccinoCoffee[index][3]
                    : (category == 'Machiato')
                        ? machiatoCoffee[index][3]
                        : (category == 'Latte')
                            ? latteCoffee[index][3]
                            : (category == 'Americano')
                                ? americanoCoffee[index][3]
                                : null,
              ),
            ),
          ),
          child: CoffeeContainer(
            image: (category == 'Cappuccino')
                ? cappuccinoCoffee[index][2]
                : (category == 'Machiato')
                    ? machiatoCoffee[index][2]
                    : (category == 'Latte')
                        ? latteCoffee[index][2]
                        : (category == 'Americano')
                            ? americanoCoffee[index][1]
                            : null,
            coffeeType: (category == 'Cappuccino')
                ? cappuccinoCoffee[index][0]
                : (category == 'Machiato')
                    ? machiatoCoffee[index][0]
                    : (category == 'Latte')
                        ? latteCoffee[index][0]
                        : (category == 'Americano')
                            ? americanoCoffee[index][1]
                            : null,
            coffeeName: (category == 'Cappuccino')
                ? cappuccinoCoffee[index][1]
                : (category == 'Machiato')
                    ? machiatoCoffee[index][1]
                    : (category == 'Latte')
                        ? latteCoffee[index][1]
                        : (category == 'Americano')
                            ? americanoCoffee[index][1]
                            : null,
            price: (category == 'Cappuccino')
                ? cappuccinoCoffee[index][3]
                : (category == 'Machiato')
                    ? machiatoCoffee[index][3]
                    : (category == 'Latte')
                        ? latteCoffee[index][3]
                        : (category == 'Americano')
                            ? americanoCoffee[index][3]
                            : null,
            stars: (category == 'Cappuccino')
                ? cappuccinoCoffee[index][4]
                : (category == 'Machiato')
                    ? machiatoCoffee[index][4]
                    : (category == 'Latte')
                        ? latteCoffee[index][4]
                        : (category == 'Americano')
                            ? americanoCoffee[index][4]
                            : null,
          ),
        );
      },
    );
  }
}
