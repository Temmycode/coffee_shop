import 'package:coffee_shop/controllers/setup/colors/app_colors.dart';
import 'package:coffee_shop/controllers/setup/text/small_text.dart';
import 'package:coffee_shop/views/extensions/dimension.dart';
import 'package:flutter/material.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;
  const ExpandableTextWidget({super.key, required this.text});

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String firstHalf;
  late String secondHalf;

  bool hiddenText = true;
  double textHeight = 812 / 5.63;

  @override
  void initState() {
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty
          ? SmallText(
              size: 14.h(context),
              text: firstHalf,
              spacing: 0.7,
              color: Colors.grey,
            )
          : Column(
              children: [
                SmallText(
                  size: 14.h(context),
                  text: hiddenText ? "$firstHalf..." : (firstHalf + secondHalf),
                  spacing: 0.7,
                  color: Colors.grey,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      hiddenText = !hiddenText;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: SmallText(
                      text: hiddenText ? 'More detailed' : 'Less detailed',
                      color: AppColors.brown,
                    ),
                  ),
                )
              ],
            ),
    );
  }
}
