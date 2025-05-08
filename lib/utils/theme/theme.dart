import 'package:ecommerce/utils/theme/custom_theme/appbar_theme.dart';
import 'package:ecommerce/utils/theme/custom_theme/bottom_sheet_theme.dart';
import 'package:ecommerce/utils/theme/custom_theme/checkbox_theme.dart';
import 'package:ecommerce/utils/theme/custom_theme/chip_theme.dart';
import 'package:ecommerce/utils/theme/custom_theme/elevated_button_theme.dart';
import 'package:ecommerce/utils/theme/custom_theme/outline_button_theme.dart';
import 'package:ecommerce/utils/theme/custom_theme/text_field_theme.dart';
import 'package:ecommerce/utils/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';

class PRAppTheme {
  PRAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.amber,
    scaffoldBackgroundColor: Colors.white,
    textTheme: PRTextTheme.lightTextTheme,
    elevatedButtonTheme: PRElevatedButtonTheme.lightElevatedButtonTheme,
    chipTheme: PRChipTheme.lightChipTheme,
    appBarTheme: PRAppBarTheme.lightAppBarTheme,
    checkboxTheme: PRCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: PRBottomSheetTheme.lightBottomSheetTheme,
    outlinedButtonTheme: PROutlineButtonTheme.lightOutlineButtonTheme,
    inputDecorationTheme: PRTextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.amber,
    scaffoldBackgroundColor: Colors.black,
    textTheme: PRTextTheme.darkTextTheme,
    elevatedButtonTheme: PRElevatedButtonTheme.darkElevatedButtonTheme,
    chipTheme: PRChipTheme.darkChipTheme,
    appBarTheme: PRAppBarTheme.darkAppBarTheme,
    checkboxTheme: PRCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: PRBottomSheetTheme.darkBottomSheetTheme,
    outlinedButtonTheme: PROutlineButtonTheme.darkOutlineButtonTheme,
    inputDecorationTheme: PRTextFormFieldTheme.darkInputDecorationTheme,
  );
}
