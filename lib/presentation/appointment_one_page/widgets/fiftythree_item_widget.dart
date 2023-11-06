import 'package:dhyanesh_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FiftythreeItemWidget extends StatelessWidget {
  const FiftythreeItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 15.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "10:00 PM",
        style: TextStyle(
          color: appTheme.blueGray900,
          fontSize: 14.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
      ),
      selected: false,
      backgroundColor: appTheme.gray30001,
      selectedColor: appTheme.cyan400,
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(
          10.h,
        ),
      ),
      onSelected: (value) {},
    );
  }
}
