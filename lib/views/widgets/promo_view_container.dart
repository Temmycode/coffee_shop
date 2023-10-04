import 'package:coffee_shop/controllers/setup/app_images.dart';
import 'package:coffee_shop/controllers/setup/text/title_text.dart';
import 'package:coffee_shop/views/extensions/dimension.dart';
import 'package:coffee_shop/views/widgets/promo_icon.dart';
import 'package:flutter/material.dart';

class PromoViewContainer extends StatelessWidget {
  const PromoViewContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 30.w(context),
        ),
        height: 140.h(context),
        width: double.maxFinite,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            16.h(context),
          ),
          color: Colors.grey,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(
            16.h(context),
          ),

          //ADD THE PROMO IMAGES HERE

          child: Stack(
            children: [
              Image.asset(
                AppImages.promoCoffee,
                fit: BoxFit.cover,
                height: 140.h(context),
                width: 315.w(context),
              ),
              Positioned(
                left: 23.w(context),
                top: 13.h(context),
                child: const PromoIcon(),
              ),
              Positioned(
                bottom: 8.h(context),
                left: 23.w(context),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleText(
                      text: "Buy one get",
                      size: 32.h(context),
                      color: Colors.white,
                      shadow: true,
                    ),
                    TitleText(
                      text: "one FREE",
                      size: 32.h(context),
                      color: Colors.white,
                      shadow: true,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
