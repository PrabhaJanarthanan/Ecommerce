import 'package:ecommerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class PRChoiceChip extends StatelessWidget {
  const PRChoiceChip({
    super.key, 
    required this.text, 
    required this.selected, 
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = PRHelperFunctions.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
      label: isColor ? const SizedBox() :  Text(text), 
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected ? PRColors.white : null),
      avatar: isColor
             ? PRCircularContainer(width: 50, height: 50, backgroundColor: PRHelperFunctions.getColor(text)!)
             : null,
      labelPadding: isColor ? const EdgeInsets.all(0) : null,
      shape: isColor ? const CircleBorder() : null,
      padding: isColor ? const EdgeInsets.all(0) : null,
      backgroundColor: isColor ? PRHelperFunctions.getColor(text)! : null,
      ),
    );
  }
}