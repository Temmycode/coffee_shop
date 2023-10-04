import 'package:coffee_shop/controllers/setup/app_images.dart';
import 'package:coffee_shop/controllers/setup/colors/app_colors.dart';
import 'package:coffee_shop/controllers/setup/text/small_text.dart';
import 'package:coffee_shop/controllers/setup/text/title_text.dart';
import 'package:coffee_shop/views/extensions/dimension.dart';
import 'package:coffee_shop/views/extensions/to_icon.dart';
import 'package:coffee_shop/views/widgets/address_container.dart';
import 'package:coffee_shop/views/widgets/deliver_pickup_selector.dart';
import 'package:coffee_shop/views/widgets/order_tile.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  final double price;
  final String image;
  final String title;
  final String subtitle;
  final int amount;
  final String heroTag;
  final int coffeeSize;

  const OrderPage({
    super.key,
    required this.price,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.amount,
    required this.heroTag,
    required this.coffeeSize,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.only(
          top: 44.h(context),
          right: 30.w(context),
          left: 30.w(context),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 16.h(context),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Back arrow icon
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 24.h(context),
                  ),
                ),

                SizedBox(
                  width: 106.w(context),
                ),

                TitleText(
                  text: "Order",
                  size: 18.h(context),
                  color: Colors.black,
                ),
              ],
            ),
            SizedBox(
              height: 25.h(context),
            ),

            // DELIVERY OR PICK UP BUTTON
            const DeliveryPickupSelector(),

            SizedBox(
              height: 24.h(context),
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleText(
                  text: "Delivery Address",
                  size: 16.h(context),
                  color: Colors.black,
                ),
                SizedBox(
                  height: 16.h(context),
                ),

                SmallText(
                  text: "Jl. Kpg Sutoyo",
                  size: 16.h(context),
                  color: Colors.black,
                ),

                // address of the buyer
                SmallText(
                  text: "Kpg. Sutoyo No.620, Bilzen, Tanjungbalai",
                  size: 16.h(context),
                  color: Colors.grey,
                ),

                SizedBox(
                  height: 16.h(context),
                ),

                Row(
                  children: [
                    // edit address container
                    AddressContainer(
                      onTap: () {},
                      text: "Edit Address",
                      icon: AppImages.edit.toIcon(
                        color: Colors.black,
                        size: 14.h(context),
                      ),
                    ),

                    SizedBox(
                      width: 8.w(context),
                    ),

                    // add a note
                    AddressContainer(
                      onTap: () {},
                      text: "Add Note",
                      icon: AppImages.note.toIcon(
                        color: Colors.black,
                        size: 14.h(context),
                      ),
                    )
                  ],
                ),

                SizedBox(
                  height: 20.h(context),
                ),

                // a divider (just UI)
                const Divider(),

                SizedBox(
                  height: 5.h(context),
                ),

                // the set of coffees to be ordered
                OrderTile(
                  image: image,
                  title: title,
                  subtitle: subtitle,
                  number: amount,
                  heroTag: heroTag,
                ),
              ],
            ),

            SizedBox(
              height: 20.h(context),
            ),

            // a strip of grey line dividing the screen
            Container(
              width: double.maxFinite,
              height: 4.h(context),
              color: Colors.grey.shade100,
            ),

            SizedBox(
              height: 20.h(context),
            ),

            // DISCOUNT CONTAINER
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 16.w(context),
              ),
              height: 56.h(context),
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  14.h(context),
                ),
                border: Border.all(
                  width: 1,
                  color: Colors.grey.shade300,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      AppImages.discount.toIcon(
                        size: 24.h(context),
                        color: AppColors.brown,
                      ),

                      SizedBox(
                        width: 12.w(context),
                      ),

                      // there should a functionality to pick and apply discounts
                      // this is just mock data
                      // there will be a screen or scrollable draggable pop up to handle that
                      TitleText(
                        text: "1 Discount is applied",
                        weight: FontWeight.w600,
                        size: 14.h(context),
                      )
                    ],
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 20.h(context),
                  )
                ],
              ),
            ),

            SizedBox(
              height: 20.h(context),
            ),

            // PAYMENT SUMMARY
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleText(
                  text: "Payment Summary",
                  size: 16.h(context),
                  weight: FontWeight.w600,
                ),

                SizedBox(
                  height: 16.h(context),
                ),

                // price
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmallText(
                      text: "Price",
                      size: 14.h(context),
                    ),

                    // the price
                    SmallText(
                      text: '\$ $price',
                      weight: FontWeight.w700,
                      size: 14.h(context),
                    ),
                  ],
                ),

                SizedBox(
                  height: 16.h(context),
                ),

                // delivery fee
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmallText(
                      text: "Delivery Fee",
                      size: 14.h(context),
                    ),

                    // the price
                    SmallText(
                      text: '\$ 1.0',
                      weight: FontWeight.w700,
                      size: 14.h(context),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: Ink(
        padding: EdgeInsets.only(
          top: 16.h(context),
          left: 30.w(context),
          right: 30.w(context),
        ),
        width: double.maxFinite,
        height: 161.h(context),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            24.h(context),
          ),
          color: AppColors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            // The Info about your product to order
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    // money icon
                    AppImages.moneys.toIcon(
                      size: 24.h(context),
                      color: AppColors.brown,
                    ),

                    SizedBox(
                      width: 12.w(context),
                    ),

                    // cash icon
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(
                        right: 14.w(context),
                      ),
                      height: 24.h(context),
                      width: 112.w(context),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          20.h(context),
                        ),
                        color: AppColors.lightGrey,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // the cash you are to pay
                          // or maybe it's a slidable button

                          Container(
                            alignment: Alignment.center,
                            height: 24.h(context),
                            width: 51.w(context),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                20.h(context),
                              ),
                              color: AppColors.brown,
                            ),
                            child: SmallText(
                              text: "Cash",
                              color: AppColors.white,
                            ),
                          ),

                          // the price
                          SmallText(
                            text: '\$ ${price + 1.0}',
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                  ],
                ),

                // the info icon
                AppImages.more.toIcon(
                  size: 24.h(context),
                  color: Colors.grey,
                ),
              ],
            ),

            SizedBox(
              height: 16.h(context),
            ),

            InkWell(
              borderRadius: BorderRadius.circular(
                16.h(context),
              ),
              onTap: () {},
              child: Ink(
                height: 62.h(context),
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    16.h(context),
                  ),
                  color: AppColors.brown,
                ),
                child: Center(
                  child: TitleText(
                    text: "Order",
                    color: Colors.white,
                    size: 16.h(context),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 9.h(context),
            ),
          ],
        ),
      ),
    );
  }
}
