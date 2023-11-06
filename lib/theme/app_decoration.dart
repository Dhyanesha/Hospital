import 'package:flutter/material.dart';
import 'package:dhyanesh_s_application1/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray10001,
      );
  static BoxDecoration get fillCyan => BoxDecoration(
        color: appTheme.cyan400,
      );
  static BoxDecoration get fillCyan50 => BoxDecoration(
        color: appTheme.cyan50,
      );
  static BoxDecoration get fillCyanA => BoxDecoration(
        color: appTheme.cyanA700,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get fillGray10001 => BoxDecoration(
        color: appTheme.gray10001,
      );
  static BoxDecoration get fillGray10002 => BoxDecoration(
        color: appTheme.gray10002,
      );
  static BoxDecoration get fillIndigoA => BoxDecoration(
        color: appTheme.indigoA200,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );

  // Outline decorations
  static BoxDecoration get outlineGray => BoxDecoration(
        color: theme.colorScheme.primary,
        border: Border.all(
          color: appTheme.gray70001,
          width: 6.h,
        ),
      );
  static BoxDecoration get outlineGray70001 => BoxDecoration(
        color: appTheme.cyan400,
        border: Border.all(
          color: appTheme.gray70001,
          width: 6.h,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder33 => BorderRadius.circular(
        33.h,
      );
  static BorderRadius get circleBorder92 => BorderRadius.circular(
        92.h,
      );

  // Custom borders
  static BorderRadius get customBorderBL24 => BorderRadius.only(
        topRight: Radius.circular(24.h),
        bottomLeft: Radius.circular(24.h),
        bottomRight: Radius.circular(24.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder27 => BorderRadius.circular(
        27.h,
      );
  static BorderRadius get roundedBorder3 => BorderRadius.circular(
        3.h,
      );
  static BorderRadius get roundedBorder6 => BorderRadius.circular(
        6.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
