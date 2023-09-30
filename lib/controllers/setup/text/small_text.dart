import 'package:coffee_shop/views/extensions/dimension.dart';
import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final String text;
  final double? size;
  final Color? color;
  final FontWeight? weight;
  final TextOverflow? overflow;
  final double? spacing;
  const SmallText({
    super.key,
    required this.text,
    this.size = 12,
    this.color = Colors.black,
    this.weight = FontWeight.normal,
    this.overflow = TextOverflow.ellipsis,
    this.spacing,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color == Colors.black ? Colors.black : color,
        fontSize: size == 12 ? 12.h(context) : size,
        fontWeight: weight == FontWeight.normal ? FontWeight.normal : weight,
        overflow: overflow == TextOverflow.ellipsis
            ? TextOverflow.ellipsis
            : overflow,
        letterSpacing: spacing,
      ),
    );
  }
}
