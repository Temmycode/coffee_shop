import 'package:flutter/material.dart';

extension Dimensions on num {
  double h(BuildContext context) {
    const screenHeight = 812;
    final height = MediaQuery.of(context).size.height;
    return height * (this / screenHeight);
  }

  double w(BuildContext context) {
    const screenWidth = 375;
    final width = MediaQuery.of(context).size.width;
    return width * (this / screenWidth);
  }
}
