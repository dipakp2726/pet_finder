import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_heaven/core/configs/styles/app_colors.dart';
import 'package:pet_heaven/core/configs/styles/app_text_styles.dart';

/// Styles class holding app theming information
class AppThemes {
  /// Dark theme data of the app
  static ThemeData get darkTheme {
    return FlexThemeData.dark(
      scheme: FlexScheme.sanJuanBlue,
      surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
      blendLevel: 15,
      appBarElevation: 6.5,
      swapColors: true,
      subThemesData: const FlexSubThemesData(
        inputDecoratorRadius: 11,
        inputDecoratorFocusedBorderWidth: 2.5,
      ),
      keyColors: const FlexKeyColors(),
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      useMaterial3: true,
      swapLegacyOnMaterial3: true,
      textTheme: TextThemes.darkTextTheme,
      primaryTextTheme: TextThemes.primaryTextTheme,
      fontFamily: GoogleFonts.poppins().fontFamily,
    );
  }

  /// Light theme data of the app
  static ThemeData get lightTheme {
    return FlexThemeData.light(
      scheme: FlexScheme.sanJuanBlue,
      surfaceMode: FlexSurfaceMode.highScaffoldLowSurfacesVariantDialog,
      blendLevel: 33,
      swapColors: true,
      subThemesData: const FlexSubThemesData(
        inputDecoratorRadius: 11,
        inputDecoratorFocusedBorderWidth: 2.5,
      ),
      keyColors: const FlexKeyColors(),
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      useMaterial3: true,
      swapLegacyOnMaterial3: true,
      textTheme: TextThemes.darkTextTheme,
      primaryTextTheme: TextThemes.primaryTextTheme,
      fontFamily: GoogleFonts.poppins().fontFamily,
    );
  }
}

/// Styles class holding app text theming information
class TextThemes {
  /// Main text theme
  static TextTheme get textTheme {
    return const TextTheme(
      bodyText1: AppTextStyles.bodyLg,
      bodyText2: AppTextStyles.body,
      subtitle1: AppTextStyles.bodySm,
      subtitle2: AppTextStyles.bodyXs,
      headline1: AppTextStyles.h1,
      headline2: AppTextStyles.h2,
      headline3: AppTextStyles.h3,
      headline4: AppTextStyles.h4,
    );
  }

  /// Dark text theme
  static TextTheme get darkTextTheme {
    return TextTheme(
      bodyText1: AppTextStyles.bodyLg.copyWith(color: AppColors.white),
      bodyText2: AppTextStyles.body.copyWith(color: AppColors.white),
      subtitle1: AppTextStyles.bodySm.copyWith(color: AppColors.white),
      subtitle2: AppTextStyles.bodyXs.copyWith(color: AppColors.white),
      headline1: AppTextStyles.h1.copyWith(color: AppColors.white),
      headline2: AppTextStyles.h2.copyWith(color: AppColors.white),
      headline3: AppTextStyles.h3.copyWith(color: AppColors.white),
      headline4: AppTextStyles.h4.copyWith(color: AppColors.white),
    );
  }

  /// Primary text theme
  /// Uses [AppColors.primary] for all text styles
  static TextTheme get primaryTextTheme {
    return TextTheme(
      bodyText1: AppTextStyles.bodyLg.copyWith(color: AppColors.primary),
      bodyText2: AppTextStyles.body.copyWith(color: AppColors.primary),
      subtitle1: AppTextStyles.bodySm.copyWith(color: AppColors.primary),
      subtitle2: AppTextStyles.bodyXs.copyWith(color: AppColors.primary),
      headline1: AppTextStyles.h1.copyWith(color: AppColors.primary),
      headline2: AppTextStyles.h2.copyWith(color: AppColors.primary),
      headline3: AppTextStyles.h3.copyWith(color: AppColors.primary),
      headline4: AppTextStyles.h4.copyWith(color: AppColors.primary),
    );
  }
}
