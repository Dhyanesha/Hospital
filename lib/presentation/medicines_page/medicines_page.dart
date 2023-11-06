import 'package:dhyanesh_s_application1/core/app_export.dart';
import 'package:dhyanesh_s_application1/widgets/custom_elevated_button.dart';
import 'package:dhyanesh_s_application1/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MedicinesPage extends StatefulWidget {
  const MedicinesPage({Key? key})
      : super(
          key: key,
        );

  @override
  MedicinesPageState createState() => MedicinesPageState();
}

class MedicinesPageState extends State<MedicinesPage>
    with AutomaticKeepAliveClientMixin<MedicinesPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 86.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 25.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              _buildAddToCartButton(context),
                              _buildBuyNowButton(context),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 43.v),
                      _buildAddToCartColumn(context),
                      SizedBox(height: 25.v),
                      _buildAddToCart(context),
                      SizedBox(height: 55.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 23.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              _buildAvailableButton(context),
                              _buildBookButton(context),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAddToCartButton(BuildContext context) {
    return CustomElevatedButton(
      height: 30.v,
      width: 102.h,
      text: "Add to cart",
      buttonStyle: CustomButtonStyles.fillPrimaryTL15,
      buttonTextStyle: CustomTextStyles.labelLargeGray500,
    );
  }

  /// Section Widget
  Widget _buildBuyNowButton(BuildContext context) {
    return CustomElevatedButton(
      height: 30.v,
      width: 102.h,
      text: "Buy Now",
      margin: EdgeInsets.only(left: 13.h),
      buttonStyle: CustomButtonStyles.outlineBlack,
      buttonTextStyle: theme.textTheme.labelLarge!,
    );
  }

  /// Section Widget
  Widget _buildAddToCartButton2(BuildContext context) {
    return CustomElevatedButton(
      height: 30.v,
      width: 102.h,
      text: "Add to cart",
      buttonStyle: CustomButtonStyles.fillPrimaryTL15,
      buttonTextStyle: CustomTextStyles.labelLargeGray500,
    );
  }

  /// Section Widget
  Widget _buildBuyNowButton2(BuildContext context) {
    return CustomElevatedButton(
      height: 30.v,
      width: 102.h,
      text: "Buy Now",
      margin: EdgeInsets.only(left: 13.h),
      buttonStyle: CustomButtonStyles.outlineBlack,
      buttonTextStyle: theme.textTheme.labelLarge!,
    );
  }

  /// Section Widget
  Widget _buildAddToCartColumn(BuildContext context) {
    return Container(
      width: 382.h,
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillCyan.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 87.v,
            width: 348.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 33.v),
                    child: SizedBox(
                      width: 157.h,
                      child: Divider(
                        indent: 127.h,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle766,
                        height: 87.v,
                        width: 83.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 7.h),
                        child: _buildDigitalThermometer(
                          context,
                          thermometerName: "Digital Thermometer",
                          price: "Price : 110    99",
                          offer:
                              "100% Mercury free\nAuto switch-Off mode\nEasy-to-read LCD Display",
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 26.h,
                          top: 3.v,
                          bottom: 73.v,
                        ),
                        child: CustomRatingBar(
                          initialRating: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 14.v),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 16.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  _buildAddToCartButton2(context),
                  _buildBuyNowButton2(context),
                ],
              ),
            ),
          ),
          SizedBox(height: 4.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAddToCartColumn2(BuildContext context) {
    return CustomElevatedButton(
      height: 30.v,
      width: 102.h,
      text: "Add to cart",
      buttonStyle: CustomButtonStyles.fillPrimaryTL15,
      buttonTextStyle: CustomTextStyles.labelLargeGray500,
    );
  }

  /// Section Widget
  Widget _buildBuyNowButton3(BuildContext context) {
    return CustomElevatedButton(
      height: 30.v,
      width: 102.h,
      text: "Buy Now",
      margin: EdgeInsets.only(left: 13.h),
      buttonStyle: CustomButtonStyles.outlineBlack,
      buttonTextStyle: theme.textTheme.labelLarge!,
    );
  }

  /// Section Widget
  Widget _buildAddToCart(BuildContext context) {
    return Container(
      width: 382.h,
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillCyan.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 87.v,
            width: 348.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 33.v),
                    child: SizedBox(
                      width: 157.h,
                      child: Divider(
                        indent: 127.h,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle766,
                        height: 87.v,
                        width: 83.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 7.h),
                        child: _buildDigitalThermometer(
                          context,
                          thermometerName: "Digital Thermometer",
                          price: "Price : 110    99",
                          offer:
                              "100% Mercury free\nAuto switch-Off mode\nEasy-to-read LCD Display",
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 26.h,
                          top: 3.v,
                          bottom: 73.v,
                        ),
                        child: CustomRatingBar(
                          initialRating: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 14.v),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 16.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  _buildAddToCartColumn2(context),
                  _buildBuyNowButton3(context),
                ],
              ),
            ),
          ),
          SizedBox(height: 4.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAvailableButton(BuildContext context) {
    return CustomElevatedButton(
      height: 30.v,
      width: 99.h,
      text: "Available",
      buttonStyle: CustomButtonStyles.fillOnErrorContainer,
      buttonTextStyle: theme.textTheme.labelLarge!,
    );
  }

  /// Section Widget
  Widget _buildBookButton(BuildContext context) {
    return CustomElevatedButton(
      height: 30.v,
      width: 73.h,
      text: "Book",
      margin: EdgeInsets.only(left: 89.h),
      buttonStyle: CustomButtonStyles.fillPrimaryTL4,
      buttonTextStyle: CustomTextStyles.labelLargeBlack900,
    );
  }

  /// Common widget
  Widget _buildDigitalThermometer(
    BuildContext context, {
    required String thermometerName,
    required String price,
    required String offer,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          thermometerName,
          style: theme.textTheme.titleMedium!.copyWith(
            color: theme.colorScheme.primary,
          ),
        ),
        SizedBox(height: 3.v),
        Text(
          price,
          style: theme.textTheme.labelLarge!.copyWith(
            color: theme.colorScheme.primary,
          ),
        ),
        SizedBox(height: 3.v),
        SizedBox(
          width: 129.h,
          child: Text(
            offer,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodySmallLight.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
        ),
      ],
    );
  }
}
