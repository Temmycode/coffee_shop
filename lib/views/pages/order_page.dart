import 'package:coffee_shop/controllers/setup/app_images.dart';
import 'package:coffee_shop/controllers/setup/text/small_text.dart';
import 'package:coffee_shop/controllers/setup/text/title_text.dart';
import 'package:coffee_shop/views/extensions/dimension.dart';
import 'package:coffee_shop/views/extensions/to_icon.dart';
import 'package:coffee_shop/views/widgets/address_container.dart';
import 'package:coffee_shop/views/widgets/order_tile.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

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
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 4.w(context),
                vertical: 4.h(context),
              ),
              height: 48.h(context),
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  14.h(context),
                ),
              ),
            ),

            SizedBox(
              height: 24.h(context),
            ),

            Column(
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
                  height: 20.h(context),
                ),

                // the set of coffees to be ordered
                const OrderTile(
                  image: AppImages.capucino,
                  title: "Cappucino",
                  subtitle: 'with Chocolate',
                  number: 1,
                ),

                // a strip of grey line dividing the screen
                Container(
                  width: double.maxFinite,
                  height: 4.h(context),
                  color: Colors.grey.shade100,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
