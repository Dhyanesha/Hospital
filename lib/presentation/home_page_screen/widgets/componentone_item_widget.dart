import 'package:dhyanesh_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ComponentoneItemWidget extends StatelessWidget {
  const ComponentoneItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 7.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.fillIndigoA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      width: 86.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Doctors",
            style: CustomTextStyles.labelLargePoppins,
          ),
          SizedBox(height: 38.v),
          CustomImageView(
            imagePath: ImageConstant.imgProfile,
            height: 19.v,
            width: 18.h,
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(right: 5.h),
          ),
        ],
      ),
    );
  }
}
