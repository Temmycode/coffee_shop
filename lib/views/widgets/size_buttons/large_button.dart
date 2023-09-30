import 'package:coffee_shop/views/widgets/size_selection_widget.dart';

class LargeButton extends SizeSelectionWidget {
  final int index;
  const LargeButton({
    super.key,
    required this.index,
  }) : super(
          text: "L",
          active: index == 2 ? true : false,
        );
}
