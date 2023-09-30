import 'package:coffee_shop/views/widgets/size_selection_widget.dart';

class MediumButton extends SizeSelectionWidget {
  final int index;
  const MediumButton({
    super.key,
    required this.index,
  }) : super(
          text: "M",
          active: index == 1 ? true : false,
        );
}
