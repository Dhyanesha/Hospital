import 'package:dhyanesh_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MedicalhistoryItemWidget extends StatelessWidget {
  const MedicalhistoryItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 76.h,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          height: 80.v,
          width: 76.h,
          padding: EdgeInsets.symmetric(
            horizontal: 12.h,
            vertical: 3.v,
          ),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup75919,
                height: 48.adaptSize,
                width: 48.adaptSize,
                alignment: Alignment.topRight,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  width: 36.h,
                  margin: EdgeInsets.only(right: 5.h),
                  child: Text(
                    "Medical History",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.labelMedium,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
