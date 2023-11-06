import 'package:dhyanesh_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GeneralItemWidget extends StatelessWidget {
  const GeneralItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 27.h,
        vertical: 5.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "General",
        style: TextStyle(
          color: theme.colorScheme.primary,
          fontSize: 14.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
      ),
      selected: false,
      backgroundColor: appTheme.gray300,
      selectedColor: appTheme.cyan400,
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(
          13.h,
        ),
      ),
      onSelected: (value) {},
    );
  }
}
