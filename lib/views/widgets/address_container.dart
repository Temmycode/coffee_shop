import 'package:coffee_shop/views/extensions/dimension.dart';
import 'package:flutter/material.dart';

class AddressContainer extends StatelessWidget {
  const AddressContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Icon(
            Icons.edit,
            size: 12.h(context),
          ),
        ],
      ),
    );
  }
}
