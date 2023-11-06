import 'package:dhyanesh_s_application1/core/app_export.dart';
import 'package:dhyanesh_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:dhyanesh_s_application1/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:dhyanesh_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:dhyanesh_s_application1/widgets/custom_elevated_button.dart';
import 'package:dhyanesh_s_application1/widgets/custom_pin_code_text_field.dart';
import 'package:flutter/material.dart';

class AccountInfoTwoScreen extends StatelessWidget {
  const AccountInfoTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 51.h, vertical: 21.v),
                child: Column(children: [
                  SizedBox(height: 17.v),
                  Text("Verification",
                      style: CustomTextStyles.headlineSmallPoppinsPrimary),
                  SizedBox(height: 8.v),
                  SizedBox(
                      width: 227.h,
                      child: Text("Enter the code from the sms\nwe sent you",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleMediumPoppins
                              .copyWith(height: 1.56))),
                  SizedBox(height: 88.v),
                  Text("05:00", style: CustomTextStyles.titleMedium16),
                  SizedBox(height: 23.v),
                  CustomPinCodeTextField(
                      context: context, onChanged: (value) {}),
                  Spacer(),
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "I didn’t receive the code! ",
                            style: CustomTextStyles.bodyMediumPoppinsGray200),
                        TextSpan(
                            text: "Resend",
                            style: CustomTextStyles.titleSmallPoppinsGray200)
                      ]),
                      textAlign: TextAlign.left)
                ])),
            bottomNavigationBar: _buildSubmitButton(context)));
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
  Widget _buildSubmitButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Submit",
        margin: EdgeInsets.only(left: 27.h, right: 21.h, bottom: 45.v),
        buttonTextStyle: CustomTextStyles.titleLargePoppinsCyan400Medium,
        onPressed: () {
          onTapSubmitButton(context);
        });
  }

  /// Navigates to the accountInfoFourScreen when the action is triggered.
  onTapSubmitButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.accountInfoFourScreen);
  }
}
