import 'package:coffee_shop/controllers/setup/text/small_text.dart';
import 'package:coffee_shop/controllers/setup/text/title_text.dart';
import 'package:coffee_shop/views/extensions/dimension.dart';
import 'package:flutter/material.dart';

class OrderTile extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final int number;
  final String heroTag;
  const OrderTile({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.number,
    required this.heroTag,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54.h(context),
      width: double.maxFinite,
      child: ListTile(
        leading: Hero(
          tag: heroTag,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(
              12.h(context),
            ),
            // this should be a network image though
            child: Image.asset(
              image,
              fit: BoxFit.cover,
              height: 54.h(context),
              width: 54.w(context),
            ),
          ),
        ),
        title: TitleText(
          text: title,
          size: 16.h(context),
          color: Colors.black,
        ),
        subtitle: SmallText(
          text: subtitle,
          color: Colors.grey,
        ),
        trailing: SizedBox(
          width: 90.w(context),
          height: 28.h(context),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // SUBTRACT BUTTON
              Container(
                height: 28.h(context),
                width: 28.w(context),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      30.h(context),
                    ),
                    border: Border.all(color: Colors.grey.shade400)),
                child: Icon(
                  Icons.add,
                  size: 16.h(context),
                ),
              ),

              // NUMBER OF COFFEE
              TitleText(
                text: number.toString(),
                size: 14.h(context),
              ),

              // ADD BUTTON
              Container(
                height: 28.h(context),
                width: 28.w(context),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      30.h(context),
                    ),
                    border: Border.all(color: Colors.grey.shade400)),
                child: Icon(
                  Icons.add,
                  size: 16.h(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
