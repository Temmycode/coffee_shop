import 'package:coffee_shop/controllers/setup/app_images.dart';
import 'package:coffee_shop/controllers/setup/colors/app_colors.dart';
import 'package:coffee_shop/controllers/setup/text/small_text.dart';
import 'package:coffee_shop/controllers/setup/text/title_text.dart';
import 'package:coffee_shop/views/extensions/dimension.dart';
import 'package:coffee_shop/views/extensions/to_icon.dart';
import 'package:flutter/material.dart';

class CoffeeContainer extends StatelessWidget {
  final String image;
  final String coffeeType;
  final String coffeeName;
  final double price;
  final double stars;
  final VoidCallback? onTap;

  const CoffeeContainer({
    super.key,
    required this.image,
    required this.coffeeType,
    required this.coffeeName,
    required this.price,
    required this.stars,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 4.h(context),
        left: 4.w(context),
        right: 4.w(context),
        bottom: 17.h(context),
      ),
      width: 149.w(context),
      height: 239.h(context),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          16.h(context),
        ),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // IMAGE OF THE COFFEE AND THE START
          Stack(
            children: [
              // the number of stars of the coffee
              Positioned(
                child: Row(
                  children: [
                    // the star icon
                    AppImages.star.toIcon(
                      color: AppColors.starGold,
                      size: 10.h(context),
                    ),

                    SizedBox(
                      width: 2.w(context),
                    ),

                    // the no of stars
                    TitleText(
                      text: stars.toString(),
                      size: 10.h(context),
                      weight: FontWeight.w600,
                    )
                  ],
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(
                  16.h(context),
                ),
                child: Image.asset(
                  image,
                  height: 132.h(context),
                  width: 141.w(context),
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),

          SizedBox(
            height: 12.h(context),
          ),

          // COFFEE TYPE NAME
          TitleText(
            text: coffeeType,
            size: 16.h(context),
            color: Colors.black,
          ),

          SizedBox(
            height: 4.h(context),
          ),

          // COFFEE NAME
          SmallText(
            text: coffeeName,
            color: Colors.grey,
          ),

          SizedBox(
            height: 12.h(context),
          ),

          Row(
            children: [
              // COFFEE PRICE
              TitleText(
                text: '\$ $price',
                size: 18.h(context),
              ),

              // ADD TO CART BUTTON
              GestureDetector(
                onTap: onTap,
                child: Container(
                  alignment: Alignment.center,
                  width: 32.w(context),
                  height: 32.h(context),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10.h(context),
                    ),
                    color: AppColors.brown,
                  ),
                  child: Icon(
                    Icons.add,
                    size: 16.h(context),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
