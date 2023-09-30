import 'package:flutter/material.dart';

extension StringToIcon on String {
  ImageIcon toIcon({
    Color? color,
    double? size,
  }) =>
      ImageIcon(
        AssetImage(this),
        color: color,
        size: size,
      );
}
