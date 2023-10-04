import 'package:coffee_shop/controllers/setup/text/small_text.dart';
import 'package:coffee_shop/views/extensions/dimension.dart';
import 'package:flutter/material.dart';

class AddressContainer extends StatelessWidget {
  final String text;
  final Widget icon;
  final VoidCallback? onTap;
  const AddressContainer({
    super.key,
    required this.text,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 12.w(context),
        ),
        height: 27.h(context),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            16.h(context),
          ),
          color: Colors.white,
          border: Border.all(color: Colors.grey.shade400),
        ),
        child: Row(
          children: [
            icon,
            SizedBox(
              width: 4.w(context),
            ),
            SmallText(
              text: text,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
