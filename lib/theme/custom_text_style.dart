import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBluegray90001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray90001,
      );
  static get bodyLargeInter => theme.textTheme.bodyLarge!.inter;
  static get bodyMediumGray200 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray200,
      );
  static get bodyMediumGray600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumPoppinsGray200 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.gray200,
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallLight => theme.textTheme.bodySmall!.copyWith(
        fontSize: 11.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallPoppinsBlack900 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.black900.withOpacity(0.5),
        fontSize: 11.fSize,
      );
  static get bodySmallPoppinsBlack90011 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.black900,
        fontSize: 11.fSize,
      );
  // Headline text style
  static get headlineLargeMSReferenceSpecialtyPurpleA100 =>
      theme.textTheme.headlineLarge!.mSReferenceSpecialty.copyWith(
        color: appTheme.purpleA100,
        fontSize: 32.fSize,
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallCyan400 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.cyan400,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallOnErrorContainer =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get headlineSmallPoppinsBlack900 =>
      theme.textTheme.headlineSmall!.poppins.copyWith(
        color: appTheme.black900.withOpacity(0.7),
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallPoppinsPrimary =>
      theme.textTheme.headlineSmall!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallPoppinsPrimarySemiBold =>
      theme.textTheme.headlineSmall!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallPrimary => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get headlineSmallPrimaryBold =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallPrimaryRegular =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallPrimarySemiBold =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  // Label text style
  static get labelLargeBlack900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
      );
  static get labelLargeCyan400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.cyan400,
      );
  static get labelLargeDMSans => theme.textTheme.labelLarge!.dMSans;
  static get labelLargeGray20001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray20001,
      );
  static get labelLargeGray500 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray500,
      );
  static get labelLargeGray60002 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray60002,
      );
  static get labelLargePoppins => theme.textTheme.labelLarge!.poppins;
  static get labelLargePoppinsGray400 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.gray400,
      );
  static get labelLargeSemiBold => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelMediumBlack900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.5),
        fontSize: 11.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumBluegray900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumGray700 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  // Title text style
  static get titleLargeBluegray400 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray400,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeGray70003 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray70003,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeMedium => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleLargePoppins => theme.textTheme.titleLarge!.poppins.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleLargePoppinsBlack900 =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get titleLargePoppinsCyan400 =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.cyan400,
        fontWeight: FontWeight.w600,
      );
  static get titleLargePoppinsCyan400Medium =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.cyan400,
        fontWeight: FontWeight.w500,
      );
  static get titleLargePoppinsIndigoA200 =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.indigoA200,
        fontWeight: FontWeight.w600,
      );
  static get titleLargePoppinsIndigoA200Medium =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.indigoA200,
        fontWeight: FontWeight.w500,
      );
  static get titleLargePoppinsSemiBold =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        fontSize: 22.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMedium16_1 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 17.fSize,
      );
  static get titleMediumGray100 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray100,
        fontSize: 16.fSize,
      );
  static get titleMediumGray60001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray60001,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray60001SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray60001,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray70002 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray70002,
        fontSize: 16.fSize,
      );
  static get titleMediumMontserrat =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMediumOnErrorContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOnErrorContainerSemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPoppins =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMediumPoppinsGray80087 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.gray80087,
        fontSize: 16.fSize,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900.withOpacity(0.5),
        fontSize: 15.fSize,
      );
  static get titleSmallBlack900Medium => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBlack900Medium_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBluegray900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBluegray900_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleSmallCyan400 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.cyan400,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallDMSansBlack900 =>
      theme.textTheme.titleSmall!.dMSans.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallPoppinsGray200 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.gray200,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPrimary_1 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
}

extension on TextStyle {
  TextStyle get dMSans {
    return copyWith(
      fontFamily: 'DM Sans',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get mSReferenceSpecialty {
    return copyWith(
      fontFamily: 'MS Reference Specialty',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
