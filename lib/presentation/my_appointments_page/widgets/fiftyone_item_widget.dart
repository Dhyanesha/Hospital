import 'package:dhyanesh_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FiftyoneItemWidget extends StatelessWidget {
  const FiftyoneItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 5.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "Cancel",
        style: TextStyle(
          color: appTheme.gray700,
          fontSize: 10.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
      ),
      selected: false,
      backgroundColor: theme.colorScheme.primary,
      selectedColor: appTheme.indigoA200,
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(
          12.h,
        ),
      ),
      onSelected: (value) {},
    );
  }
}
