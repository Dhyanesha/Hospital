import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:dhyanesh_s_application1/core/app_export.dart';
import 'package:dhyanesh_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:dhyanesh_s_application1/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:dhyanesh_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:dhyanesh_s_application1/widgets/custom_elevated_button.dart';
import 'package:dhyanesh_s_application1/widgets/custom_phone_number.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  Country selectedCountry = CountryPickerUtils.getCountryByPhoneCode('91');

  TextEditingController phoneNumberController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(horizontal: 6.h),
                    child: Column(children: [
                      SizedBox(height: 32.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgUndrawCertificationReIfll,
                          height: 324.v,
                          width: 227.h),
                      SizedBox(height: 46.v),
                      _buildSignUpColumn(context)
                    ])))));
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
  Widget _buildSignUpColumn(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 45.v),
        decoration: AppDecoration.fillPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 15.v),
              Padding(
                  padding: EdgeInsets.only(left: 23.h),
                  child:
                      Text("Sign up", style: theme.textTheme.headlineMedium)),
              SizedBox(height: 16.v),
              Padding(
                  padding: EdgeInsets.only(left: 27.h),
                  child: Text("Phone no.*",
                      style: CustomTextStyles.bodyMediumGray600)),
              SizedBox(height: 3.v),
              Padding(
                  padding: EdgeInsets.only(left: 23.h, right: 26.h),
                  child: CustomPhoneNumber(
                      country: selectedCountry,
                      controller: phoneNumberController,
                      onTap: (Country country) {
                        selectedCountry = country;
                      })),
              SizedBox(height: 100.v),
              Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "By signing up, you are agree to our ",
                            style: CustomTextStyles.bodySmallPoppinsBlack900),
                        TextSpan(
                            text: "Terms & Conditions",
                            style: CustomTextStyles.bodySmallPoppinsBlack90011),
                        TextSpan(
                            text: " and ",
                            style: CustomTextStyles.bodySmallPoppinsBlack900),
                        TextSpan(
                            text: "Policies",
                            style: CustomTextStyles.bodySmallPoppinsBlack90011)
                      ]),
                      textAlign: TextAlign.left)),
              SizedBox(height: 20.v),
              CustomElevatedButton(
                  text: "Get OTP",
                  margin: EdgeInsets.only(left: 6.h),
                  buttonStyle: CustomButtonStyles.fillCyan,
                  onPressed: () {
                    onTapGetOTP(context);
                  })
            ]));
  }

  /// Navigates to the accountInfoTwoScreen when the action is triggered.
  onTapGetOTP(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.accountInfoTwoScreen);
  }
}
