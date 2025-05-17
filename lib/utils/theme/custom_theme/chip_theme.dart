import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class PRChipTheme {
  PRChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: PRColors.grey.withAlpha(20),
    labelStyle: const TextStyle(color: PRColors.black),
    selectedColor: PRColors.primaryColor,
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    checkmarkColor: PRColors.white,
  );

  //Darktheme
  static ChipThemeData darkChipTheme = ChipThemeData(
    disabledColor: PRColors.darkerGrey,
    labelStyle: const TextStyle(color: PRColors.white),
    selectedColor: PRColors.primaryColor,
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    checkmarkColor: PRColors.white,
  );
}
