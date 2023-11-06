import 'package:dhyanesh_s_application1/core/app_export.dart';
import 'package:dhyanesh_s_application1/widgets/custom_elevated_button.dart';
import 'package:dhyanesh_s_application1/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  Userprofile1ItemWidget({
    Key? key,
    this.onTapBookNowButton,
  }) : super(
          key: key,
        );

  VoidCallback? onTapBookNowButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillCyan.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 94.v,
                width: 86.h,
                margin: EdgeInsets.only(bottom: 2.v),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle761,
                      height: 94.v,
                      width: 86.h,
                      radius: BorderRadius.circular(
                        3.h,
                      ),
                      alignment: Alignment.center,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle762,
                      height: 94.v,
                      width: 86.h,
                      radius: BorderRadius.circular(
                        10.h,
                      ),
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 13.h),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dr. Andrew",
                            style: theme.textTheme.titleMedium,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 4.v,
                              bottom: 6.v,
                            ),
                            child: CustomRatingBar(
                              ignoreGestures: true,
                              initialRating: 0,
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "M.B.B.S",
                          style: CustomTextStyles.labelLargeGray20001,
                        ),
                      ),
                      SizedBox(height: 11.v),
                      Container(
                        width: 257.h,
                        margin: EdgeInsets.only(right: 3.h),
                        child: Text(
                          "Dr. Andrew is an experienced dentist with over 10 years of practice. He specializes in general dentistry and offers a range of services.",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 11.v),
          CustomElevatedButton(
            height: 30.v,
            width: 102.h,
            text: "Book Now",
            buttonStyle: CustomButtonStyles.outlineBlackTL15,
            buttonTextStyle: CustomTextStyles.labelLargeCyan400,
            onPressed: () {
              onTapBookNowButton!.call();
            },
            alignment: Alignment.centerRight,
          ),
        ],
      ),
    );
  }
}
