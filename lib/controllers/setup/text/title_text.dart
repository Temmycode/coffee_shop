import 'package:coffee_shop/views/extensions/dimension.dart';
import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String text;
  final double? size;
  final Color? color;
  final FontWeight? weight;
  final TextOverflow? overflow;
  final bool? shadow;
  const TitleText({
    super.key,
    required this.text,
    this.size = 20,
    this.color = Colors.black,
    this.weight = FontWeight.bold,
    this.overflow = TextOverflow.ellipsis,
    this.shadow,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color == Colors.black ? Colors.black : color,
        fontSize: size == 20 ? 20.h(context) : size,
        fontWeight: weight == FontWeight.bold ? FontWeight.bold : weight,
        overflow: overflow == TextOverflow.ellipsis
            ? TextOverflow.ellipsis
            : overflow,
        shadows: shadow == true
            ? const [
                Shadow(
                  color: Colors.black54,
                  blurRadius: 5.0,
                  offset: Offset(4, 4),
                )
              ]
            : null,
      ),
    );
  }
}
