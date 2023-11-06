import 'package:dhyanesh_s_application1/core/app_export.dart';
import 'package:dhyanesh_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:dhyanesh_s_application1/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:dhyanesh_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:dhyanesh_s_application1/widgets/custom_elevated_button.dart';
import 'package:dhyanesh_s_application1/widgets/custom_pin_code_text_field.dart';
import 'package:flutter/material.dart';

class AccountInfoFourScreen extends StatelessWidget {
  const AccountInfoFourScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 51.h, vertical: 38.v),
                child: Column(children: [
                  Text("Verification",
                      style: CustomTextStyles.headlineSmallPoppinsPrimary),
                  SizedBox(height: 14.v),
                  SizedBox(
                      width: 227.h,
                      child: Text("Enter the code from the sms\nwe sent you",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleMediumPoppins
                              .copyWith(height: 1.56))),
                  SizedBox(height: 82.v),
                  Text("05:00", style: CustomTextStyles.titleMediumGray100),
                  SizedBox(height: 46.v),
                  CustomPinCodeTextField(
                      context: context, onChanged: (value) {}),
                  SizedBox(height: 97.v),
                  CustomElevatedButton(
                      text: "Submit",
                      buttonTextStyle:
                          CustomTextStyles.titleLargePoppinsCyan400Medium,
                      onPressed: () {
                        onTapSubmit(context);
                      }),
                  SizedBox(height: 32.v),
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "I didn’t receive the code! ",
                            style: theme.textTheme.bodyMedium),
                        TextSpan(
                            text: "Resend",
                            style: CustomTextStyles.titleSmallBlack900Medium_1)
                      ]),
                      textAlign: TextAlign.left),
                  SizedBox(height: 5.v)
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

  /// Navigates to the accountInfoScreen when the action is triggered.
  onTapSubmit(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.accountInfoScreen);
  }
}
