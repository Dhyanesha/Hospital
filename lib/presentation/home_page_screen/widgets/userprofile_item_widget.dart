import 'package:dhyanesh_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  const UserprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillCyan.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle759,
            height: 53.v,
            width: 54.h,
            radius: BorderRadius.circular(
              4.h,
            ),
            margin: EdgeInsets.only(
              top: 1.v,
              bottom: 2.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 4.v,
              bottom: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Dr. Andrew",
                  style: theme.textTheme.titleMedium,
                ),
                Text(
                  "M.B.B.S",
                  style: theme.textTheme.labelLarge,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgStar,
                  height: 12.v,
                  width: 60.h,
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            height: 6.adaptSize,
            width: 6.adaptSize,
            margin: EdgeInsets.only(
              top: 1.v,
              bottom: 49.v,
            ),
            decoration: BoxDecoration(
              color: appTheme.lightGreenA700,
              borderRadius: BorderRadius.circular(
                3.h,
              ),
              border: Border.all(
                color: theme.colorScheme.primary,
                width: 1.h,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 4.h,
              right: 1.h,
              bottom: 47.v,
            ),
            child: Text(
              "Active",
              style: theme.textTheme.labelSmall,
            ),
          ),
        ],
      ),
    );
  }
}
