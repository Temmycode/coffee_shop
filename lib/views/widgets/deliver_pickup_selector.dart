import 'package:coffee_shop/controllers/setup/colors/app_colors.dart';
import 'package:coffee_shop/controllers/setup/text/small_text.dart';
import 'package:coffee_shop/controllers/setup/text/title_text.dart';
import 'package:coffee_shop/views/extensions/dimension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class DeliveryPickupSelector extends StatefulWidget {
  const DeliveryPickupSelector({super.key});

  @override
  State<DeliveryPickupSelector> createState() => _DeliveryPickupSelectorState();
}

class _DeliveryPickupSelectorState extends State<DeliveryPickupSelector>
    with TickerProviderStateMixin {
  double? left = 0;
  double? right;
  bool isDelivery = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(
        horizontal: 3.w(context),
        vertical: 3.h(context),
      ),
      height: 48.h(context),
      width: 315.w(context),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          10.h(context),
        ),
        color: AppColors.lightGrey,
      ),
      child: Stack(
        children: [
          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      left = 0.w(context);
                      right = 315.w(context) / 2;
                      isDelivery = true;
                    });
                  },
                  child: SizedBox(
                    child: Center(
                      child: SmallText(
                        text: "Deliver",
                        size: 16.h(context),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      right = 0.w(context);
                      left = 315.w(context) / 2;
                      isDelivery = false;
                    });
                  },
                  child: SizedBox(
                    child: Center(
                      child: SmallText(
                        text: "Pick Up",
                        size: 16.h(context),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          AnimatedPositioned(
            duration: 0.28.seconds,
            left: left,
            right: right,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 3.w(context),
                vertical: 3.h(context),
              ),
              height: 40.h(context),
              width: 315.w(context) / 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  10.h(context),
                ),
                color: AppColors.brown,
              ),
              child: Center(
                child: isDelivery
                    ? TitleText(
                        text: "Deliver",
                        color: Colors.white,
                        size: 16.h(context),
                      )
                    : TitleText(
                        text: "Pick Up",
                        color: Colors.white,
                        size: 16.h(context),
                      ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
