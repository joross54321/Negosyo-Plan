import 'package:flutter/material.dart';

/// Professional government-themed colours for NegosyoPlan.
/// Primary color is official government teal, with professional neutrals and semantic colors.
class AppColors {
  AppColors._();

  // Primary & Government Identity
  static const primary = Color(0xFF0A5763); // Official government teal from logo
  static const primaryHover = Color(0xFF074550); // Darker teal for hover/active states
  static const primaryDark = Color(0xFF053A46); // Even darker for strong emphasis
  static const primaryLight = Color(0xFF1B7A90); // Lighter teal for subtle backgrounds

  // Tints and accents for primary
  static const tint = Color(0xFFD9EEF2); // Professional light teal
  static const tint2 = Color(0xFFEEF7F9); // Very light teal for backgrounds
  static const tintBorder = Color(0xFFB5D9E3); // Professional teal border

  // Secondary accent
  static const accent = Color(0xFF2E8B57); // Forest green for success/positive
  static const accentLight = Color(0xFFE8F5E9); // Light green background
  static const accentDark = Color(0xFF1B5E31); // Dark green for emphasis

  // Professional grays (government standard)
  static const text = Color(0xFF1A1A1A); // True black for primary text
  static const text2 = Color(0xFF424242); // Dark gray for secondary text
  static const muted = Color(0xFF666666); // Medium gray
  static const muted2 = Color(0xFF757575); // Gray for tertiary text
  static const hint = Color(0xFF999999); // Lighter gray for hints

  // Borders and dividers
  static const border = Color(0xFFE0E0E0); // Professional light border
  static const borderStrong = Color(0xFFBDBDBD); // Medium border for emphasis
  static const divider = Color(0xFFF5F5F5); // Very light divider

  // Surfaces (whites and near-whites)
  static const surface = Color(0xFFFFFFFF); // Pure white
  static const surface2 = Color(0xFFFAFAFA); // Off-white for subtle backgrounds
  static const track = Color(0xFFF5F5F5); // Light gray for progress/tracks

  // Data visualization colors (professional palette)
  static const actualBg = Color(0xFFDDE9F6); // Professional blue background
  static const actualFg = Color(0xFF0D47A1); // Strong blue text
  static const estimateBg = Color(0xFFFFF3E0); // Warm orange background
  static const estimateFg = Color(0xFFE65100); // Dark orange text

  // Status colors (semantic, government standard)
  static const missingBg = Color(0xFFFFEBEE); // Light red background
  static const missingFg = Color(0xFFC62828); // Strong red text
  static const missingBorder = Color(0xFFEF5350); // Red border
  static const warnBg = Color(0xFFFFF8E1); // Light yellow background
  static const warnBorder = Color(0xFFFBC02D); // Yellow border

  // Admin interface
  static const adminBg = Color(0xFFFAFAFA); // Clean admin background
  static const adminSideMuted = Color(0xFFB0BEC5); // Muted blue-gray for admin sidebar
}

/// Professional text styles optimized for government forms and accessibility.
/// Large, readable, few weights (users are 40–60 years old, government-focused).
class AppText {
  AppText._();

  // Headings - Clear hierarchy
  static const h1 = TextStyle(fontSize: 28, fontWeight: FontWeight.w600, height: 1.2, color: AppColors.text, letterSpacing: 0.2);
  static const h1Desktop = TextStyle(fontSize: 34, fontWeight: FontWeight.w600, height: 1.15, color: AppColors.text, letterSpacing: 0.3);
  static const h2 = TextStyle(fontSize: 22, fontWeight: FontWeight.w600, height: 1.25, color: AppColors.text, letterSpacing: 0.1);
  static const h3 = TextStyle(fontSize: 18, fontWeight: FontWeight.w600, height: 1.3, color: AppColors.text);

  // Body text - Professional and readable
  static const body = TextStyle(fontSize: 16, height: 1.5, color: AppColors.text, letterSpacing: 0.15);
  static const bodySm = TextStyle(fontSize: 15, height: 1.5, color: AppColors.text);

  // Labels and form text
  static const label = TextStyle(fontSize: 15, fontWeight: FontWeight.w600, height: 1.35, color: AppColors.text, letterSpacing: 0.3);
  static const labelAlt = TextStyle(fontSize: 14, fontWeight: FontWeight.w500, height: 1.3, color: AppColors.text2);

  // Secondary/supporting text
  static const lead = TextStyle(fontSize: 16, height: 1.5, color: AppColors.text2, letterSpacing: 0.1);
  static const small = TextStyle(fontSize: 14, height: 1.4, color: AppColors.muted2, letterSpacing: 0.1);
  static const tiny = TextStyle(fontSize: 12, height: 1.35, color: AppColors.muted);

  // Numeric data
  static const number = TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: AppColors.text, letterSpacing: 0.5);
  static const numberSmall = TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: AppColors.primary);

  // Semantic text
  static const eyebrow = TextStyle(fontSize: 12, fontWeight: FontWeight.w600, letterSpacing: 1, color: AppColors.primary, height: 1.4);
  static const caption = TextStyle(fontSize: 13, height: 1.4, color: AppColors.muted, letterSpacing: 0.2);
  static const error = TextStyle(fontSize: 14, height: 1.4, color: AppColors.missingFg, fontWeight: FontWeight.w500);
  static const success = TextStyle(fontSize: 14, height: 1.4, color: AppColors.accentDark, fontWeight: FontWeight.w500);
}

/// Professional spacing and sizing constants for government-style UI.
class AppDimensions {
  AppDimensions._();

  // Spacing scale
  static const xs = 4.0;
  static const sm = 8.0;
  static const md = 12.0;
  static const lg = 16.0;
  static const xl = 20.0;
  static const xxl = 24.0;
  static const xxxl = 32.0;

  // Border radius
  static const radiusSm = 6.0;
  static const radiusMd = 8.0;
  static const radiusLg = 10.0;
  static const radiusXl = 12.0;

  // Component heights
  static const touchTargetMin = 44.0; // Accessibility minimum
  static const buttonHeight = 48.0;
  static const inputHeight = 44.0;
}

class AppTheme {
  AppTheme._();

  static const fontFamily = 'AtkinsonHyperlegible';
  static const fontFallback = <String>['DejaVuSans'];

  static ThemeData light({double textScale = 1}) {
    final scheme = ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      primary: AppColors.primary,
      onPrimary: Colors.white,
      surface: AppColors.surface,
      secondary: AppColors.accent,
      error: AppColors.missingFg,
    );

    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppDimensions.radiusLg),
      borderSide: const BorderSide(color: AppColors.borderStrong, width: 1.5),
    );

    final focusedBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppDimensions.radiusLg),
      borderSide: const BorderSide(color: AppColors.primary, width: 2),
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: scheme,
      fontFamily: fontFamily,
      fontFamilyFallback: fontFallback,
      scaffoldBackgroundColor: AppColors.surface,
      dividerColor: AppColors.divider,

      // Input decoration for form fields
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        isDense: false,
        contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        hintStyle: const TextStyle(color: AppColors.hint, fontSize: 16),
        labelStyle: const TextStyle(color: AppColors.text, fontSize: 15, fontWeight: FontWeight.w500),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        border: border,
        enabledBorder: border,
        focusedBorder: focusedBorder,
        errorBorder: border.copyWith(borderSide: const BorderSide(color: AppColors.missingFg, width: 1.5)),
        focusedErrorBorder: border.copyWith(borderSide: const BorderSide(color: AppColors.missingFg, width: 2)),
        errorStyle: const TextStyle(color: AppColors.missingFg, fontSize: 13, fontWeight: FontWeight.w500),
      ),

      // Checkbox styling - professional government look
      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return AppColors.primary;
          return Colors.white;
        }),
        side: const BorderSide(color: AppColors.borderStrong, width: 1.5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppDimensions.radiusSm)),
      ),

      // Radio button styling
      radioTheme: RadioThemeData(
        fillColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return AppColors.primary;
          return Colors.white;
        }),
        overlayColor: WidgetStateProperty.all(AppColors.primary.withValues(alpha: 0.1)),
      ),

      // Elevated button (primary actions)
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: AppDimensions.lg, vertical: AppDimensions.md),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppDimensions.radiusLg)),
          elevation: 1,
          textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600, letterSpacing: 0.3),
        ),
      ),

      // Outlined button (secondary actions)
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.primary,
          side: const BorderSide(color: AppColors.borderStrong, width: 1.5),
          padding: const EdgeInsets.symmetric(horizontal: AppDimensions.lg, vertical: AppDimensions.md),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppDimensions.radiusLg)),
          textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
      ),

      // Text button (tertiary actions)
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.primary,
          padding: const EdgeInsets.symmetric(horizontal: AppDimensions.md, vertical: AppDimensions.sm),
          textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
      ),

      // Snackbar styling
      snackBarTheme: const SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        backgroundColor: AppColors.text,
        contentTextStyle: TextStyle(fontSize: 15, color: Colors.white, fontFamily: fontFamily),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(AppDimensions.radiusLg))),
      ),

      // Card styling
      cardTheme: CardThemeData(
        color: AppColors.surface,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusLg),
          side: const BorderSide(color: AppColors.border, width: 1),
        ),
      ),

      // AppBar styling
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.surface,
        foregroundColor: AppColors.text,
        elevation: 0,
        centerTitle: false,
        titleTextStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: AppColors.text,
          letterSpacing: 0.2,
        ),
      ),
    );
  }
}
