import 'package:coffee_shop/views/widgets/size_selection_widget.dart';

class SmallButton extends SizeSelectionWidget {
  final int index;
  const SmallButton({
    super.key,
    required this.index,
  }) : super(
          text: "S",
          active: index == 0 ? true : false,
        );
}
