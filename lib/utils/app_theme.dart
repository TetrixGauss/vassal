
import 'package:vassal/utils/constants/style.dart';
import 'package:flutter/material.dart';

ThemeData appTheme([ BuildContext? context]) {
  return ThemeData(
    primaryColor: Style.primaryColor,
    colorScheme: const ColorScheme.light(primary: Style.primaryColor),
    // primarySwatch: Style.primaryColor,
    textTheme: Theme.of(context!).textTheme.apply(
      fontFamily: 'Gothic',
    ),
  );
}