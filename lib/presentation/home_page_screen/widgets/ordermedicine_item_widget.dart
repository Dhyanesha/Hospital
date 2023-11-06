import 'package:dhyanesh_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OrdermedicineItemWidget extends StatelessWidget {
  const OrdermedicineItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 82.h,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 19.h,
            vertical: 5.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgFloatingIcon,
                height: 36.adaptSize,
                width: 36.adaptSize,
                margin: EdgeInsets.only(left: 2.h),
              ),
              SizedBox(height: 7.v),
              SizedBox(
                width: 42.h,
                child: Text(
                  "Order Medicine",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.labelMedium,
                ),
              ),
              SizedBox(height: 2.v),
            ],
          ),
        ),
      ),
    );
  }
}
