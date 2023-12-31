import 'package:coffee_shop/controllers/setup/app_images.dart';
import 'package:coffee_shop/controllers/setup/colors/app_colors.dart';
import 'package:coffee_shop/controllers/setup/text/expandable_text.dart';
import 'package:coffee_shop/controllers/setup/text/small_text.dart';
import 'package:coffee_shop/controllers/setup/text/title_text.dart';
import 'package:coffee_shop/views/extensions/dimension.dart';
import 'package:coffee_shop/views/extensions/to_icon.dart';
import 'package:coffee_shop/views/pages/order_page.dart';
import 'package:coffee_shop/views/widgets/milk_beans_button.dart';
import 'package:coffee_shop/views/widgets/size_buttons/large_button.dart';
import 'package:coffee_shop/views/widgets/size_buttons/medium_button.dart';
import 'package:coffee_shop/views/widgets/size_buttons/small_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DetailItemPage extends ConsumerStatefulWidget {
  final String heroTag;
  final String imageUrl;
  final String title;
  final String subTitle;
  final num rating;
  final int noOfBuys;
  final double price;

  const DetailItemPage({
    super.key,
    required this.heroTag,
    required this.imageUrl,
    required this.title,
    required this.subTitle,
    required this.rating,
    required this.noOfBuys,
    required this.price,
  });

  @override
  ConsumerState<DetailItemPage> createState() => _DetailItemPageState();
}

class _DetailItemPageState extends ConsumerState<DetailItemPage> {
  int _sizeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.only(
          top: 44.h(context),
          right: 30.w(context),
          left: 30.h(context),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 16.h(context),
            ),
            // BACK ARROW AND LIKE BUTTON
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // back arrow
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 17.99.h(context),
                  ),
                ),

                // details
                TitleText(
                  text: "Detail",
                  size: 18.h(context),
                ),

                // love icon
                Icon(
                  CupertinoIcons.heart,
                  size: 17.99.h(context),
                ),
              ],
            ),

            SizedBox(
              height: 25.h(context),
            ),

            // COFFE IMAGE CONTAINER
            Hero(
              tag: widget.heroTag,
              child: Container(
                height: 226.h(context),
                width: 315.w(context),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    16.h(context),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    16.h(context),
                  ),
                  child: Image.asset(
                    widget.imageUrl,
                    height: 226.h(context),
                    width: double.maxFinite,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 20.h(context),
            ),

            // COFFEE INFO
            // title
            TitleText(text: widget.title),
            SizedBox(
              height: 8.h(context),
            ),
            // subtitle
            SmallText(
              text: widget.subTitle,
              color: Colors.grey,
            ),

            SizedBox(
              height: 16.h(context),
            ),

            // COFFE RATINGS
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    // star icon
                    AppImages.star.toIcon(color: AppColors.starGold),

                    SizedBox(
                      width: 4.w(context),
                    ),

                    // rating number
                    TitleText(
                      text: widget.rating.toStringAsFixed(1),
                      size: 16.h(context),
                    ),

                    // number of buys
                    SmallText(
                      text: "  (${widget.noOfBuys})",
                      color: Colors.grey.shade600,
                    ),
                  ],
                ),

                // BEANS AND MILK OPTION

                // bean
                Row(
                  children: [
                    MilkBeansButton(
                      icon: AppImages.bean.toIcon(
                        size: 24.h(context),
                        color: AppColors.brown,
                      ),
                    ),

                    SizedBox(
                      width: 12.w(context),
                    ),

                    // milk
                    MilkBeansButton(
                      icon: AppImages.milk.toIcon(
                        size: 24.h(context),
                        color: AppColors.brown,
                      ),
                    ),
                  ],
                )
              ],
            ),

            SizedBox(
              height: 10.h(context),
            ),

            // DIVIDER
            const Divider(),

            SizedBox(
              height: 10.h(context),
            ),

            TitleText(
              text: "Description",
              size: 16.h(context),
            ),

            SizedBox(
              height: 12.h(context),
            ),

            // THE DESCRIPTION OF THE COFFEE
            const ExpandableTextWidget(text: "Temiloluwa"),

            const Spacer(),

            // SIZE SELECTION SECTION
            TitleText(
              text: "Size",
              size: 16.h(context),
            ),

            // SELECTION BUTTONS
            Padding(
              padding: EdgeInsets.all(3.w(context)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // SMALL BUTTON
                  GestureDetector(
                    onTap: () {
                      setState(() => _sizeIndex = 0);
                    },
                    child: SmallButton(index: _sizeIndex),
                  ),
                  // MEDIUM BUTTON
                  GestureDetector(
                    onTap: () {
                      setState(() => _sizeIndex = 1);
                    },
                    child: MediumButton(index: _sizeIndex),
                  ),
                  // LARGE BUTTON
                  GestureDetector(
                    onTap: () {
                      setState(() => _sizeIndex = 2);
                    },
                    child: LargeButton(index: _sizeIndex),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 20.h(context),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Ink(
        padding: EdgeInsets.symmetric(
          horizontal: 30.w(context),
        ),
        width: double.maxFinite,
        height: 121.h(context),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // price
                    SmallText(
                      text: "Price",
                      size: 14.h(context),
                      color: Colors.grey,
                    ),

                    SizedBox(
                      height: 8.h(context),
                    ),

                    TitleText(
                      text: '\$${widget.price.toStringAsFixed(2)}',
                      color: AppColors.brown,
                    ),
                  ],
                ),
                SizedBox(
                  width: 42.w(context),
                ),

                // BUY BUTTON
                InkWell(
                  // this
                  onTap: () {
                    // this function should take to the order page and do the buying functionality
                    // for now i will just proceed to the order page since this is just the UI

                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => OrderPage(
                          image: widget.imageUrl,
                          amount: 1,
                          title: widget.title,
                          subtitle: widget.subTitle,
                          price: widget.price,
                          heroTag: widget.heroTag,
                          coffeeSize: _sizeIndex,
                        ),
                      ),
                    );
                  },
                  borderRadius: BorderRadius.circular(
                    16.h(context),
                  ),
                  child: Ink(
                    height: 62.h(context),
                    width: 217.w(context),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        16.h(context),
                      ),
                      color: AppColors.brown,
                    ),
                    child: Center(
                      child: TitleText(
                        text: "Buy Now",
                        size: 16.h(context),
                        color: AppColors.white,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
