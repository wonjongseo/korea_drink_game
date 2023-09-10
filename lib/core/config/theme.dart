import 'package:flutter/material.dart';
import 'package:korea_drink_game/core/config/colors.dart';

class AppFonts {
  static const nanumGothic = 'NanumGothic';
  static const japaneseFont = 'NotoSerifJP';
}

class AppThemings {
  static TextStyle textStyle = const TextStyle(
    fontFamily: AppFonts.nanumGothic,
    fontSize: 18,
    color: Colors.black,
  );

  static final dartTheme = ThemeData.light(
    useMaterial3: true,
  ).copyWith(
    textTheme: ThemeData.light()
        .textTheme
        .apply(
          fontFamily: AppFonts.nanumGothic,
          bodyColor: Colors.white,
          displayColor: Colors.amber,
          decorationColor: Colors.white,
        )
        .copyWith(
          displayLarge: textStyle,
          displayMedium: textStyle,
          displaySmall: textStyle,
          headlineLarge: textStyle,
          headlineMedium: textStyle,
          headlineSmall: textStyle,
          titleLarge: textStyle,
          titleMedium: textStyle,
          titleSmall: textStyle,
          bodyLarge: textStyle,
          bodyMedium: textStyle,
          bodySmall: textStyle,
          labelLarge: textStyle,
          labelMedium: textStyle,
          labelSmall: textStyle,
        ),
    primaryTextTheme:
        ThemeData.light().textTheme.apply(fontFamily: AppFonts.nanumGothic),
    scaffoldBackgroundColor: AppColors.scaffoldBackground,
    appBarTheme: const AppBarTheme(
      color: Colors.transparent,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 18,
        fontFamily: AppFonts.nanumGothic,
      ),
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
  );
}
