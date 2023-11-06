import 'package:dhyanesh_s_application1/core/app_export.dart';
import 'package:dhyanesh_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:dhyanesh_s_application1/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:dhyanesh_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:dhyanesh_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class AccountInfoThreeScreen extends StatelessWidget {
  const AccountInfoThreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 14.h),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgUndrawFeelingBlue4b7q,
                          height: 189.v,
                          width: 363.h),
                      SizedBox(height: 5.v),
                      _buildConfirmationSection(context)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 29.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrow2,
            margin: EdgeInsets.only(left: 27.h, top: 28.v, bottom: 24.v)),
        title: AppbarSubtitleTwo(
            text: "Back", margin: EdgeInsets.only(left: 24.h)));
  }

  /// Section Widget
  Widget _buildConfirmationSection(BuildContext context) {
    return Container(
        decoration: AppDecoration.fillBlueGray,
        child: Column(children: [
          Container(
              width: 399.h,
              margin: EdgeInsets.only(right: 1.h),
              padding: EdgeInsets.symmetric(horizontal: 45.h, vertical: 15.v),
              decoration: AppDecoration.fillGray10001,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 11.v),
                    Text("Are you sure you want to exit?",
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleLargePoppinsCyan400Medium)
                  ])),
          SizedBox(height: 16.v),
          Padding(
              padding: EdgeInsets.only(left: 39.h, right: 27.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomElevatedButton(
                        height: 45.v,
                        width: 109.h,
                        text: "Yes",
                        buttonStyle: CustomButtonStyles.fillIndigoATL19,
                        buttonTextStyle:
                            CustomTextStyles.titleLargePoppinsBlack900),
                    CustomElevatedButton(
                        height: 45.v,
                        width: 109.h,
                        text: "No",
                        buttonStyle: CustomButtonStyles.fillIndigoATL19,
                        buttonTextStyle:
                            CustomTextStyles.titleLargePoppinsBlack900,
                        onPressed: () {
                          onTapNo(context);
                        })
                  ])),
          SizedBox(height: 22.v)
        ]));
  }

  /// Navigates to the homePageScreen when the action is triggered.
  onTapNo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homePageScreen);
  }
}
