import 'package:flutter/material.dart';
import 'package:uji_proyek_2/utils/theme/custome_theme.dart/appbar_theme.dart';
import 'package:uji_proyek_2/utils/theme/custome_theme.dart/bottom_sheet_theme.dart';
import 'package:uji_proyek_2/utils/theme/custome_theme.dart/checkbox_theme.dart';
import 'package:uji_proyek_2/utils/theme/custome_theme.dart/chip_theme.dart';
import 'package:uji_proyek_2/utils/theme/custome_theme.dart/elevated_button_theme.dart';
import 'package:uji_proyek_2/utils/theme/custome_theme.dart/outlined_button_theme.dart';
import 'package:uji_proyek_2/utils/theme/custome_theme.dart/text_field_theme.dart';
import 'package:uji_proyek_2/utils/theme/custome_theme.dart/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.lightChipTheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckboxTheme.lightCheckBoxTheme,
    scaffoldBackgroundColor: Colors.white,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlineButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: TTextTheme.darkTextTheme,
    chipTheme: TChipTheme.darkChipTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
    scaffoldBackgroundColor: Colors.black,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: TOutlineButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
  );
}
