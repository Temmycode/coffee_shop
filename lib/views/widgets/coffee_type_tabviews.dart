import 'package:coffee_shop/controllers/constants/coffees.dart';
import 'package:coffee_shop/views/widgets/coffee_container.dart';
import 'package:flutter/material.dart';

class CoffeeTypeTabviews extends StatelessWidget {
  final String category;
  const CoffeeTypeTabviews({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 0.62,
        crossAxisCount: 2,
      ),
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
        return CoffeeContainer(
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
        );
      },
    );
  }
}
