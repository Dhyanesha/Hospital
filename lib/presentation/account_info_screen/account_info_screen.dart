import 'package:dhyanesh_s_application1/core/app_export.dart';
import 'package:dhyanesh_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:dhyanesh_s_application1/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:dhyanesh_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:dhyanesh_s_application1/widgets/custom_elevated_button.dart';
import 'package:dhyanesh_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AccountInfoScreen extends StatelessWidget {
  AccountInfoScreen({Key? key}) : super(key: key);

  TextEditingController userNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController dobDdController = TextEditingController();

  TextEditingController dobYyyyController = TextEditingController();

  TextEditingController locationController = TextEditingController();

  TextEditingController genderController = TextEditingController();

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
                    padding:
                        EdgeInsets.symmetric(horizontal: 27.h, vertical: 18.v),
                    child: Column(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgGroup76028,
                          height: 123.v,
                          width: 119.h),
                      SizedBox(height: 9.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text("User Name",
                              style:
                                  CustomTextStyles.titleLargePoppinsSemiBold)),
                      SizedBox(height: 1.v),
                      _buildUserName(context),
                      SizedBox(height: 16.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 9.h),
                              child: Text("Email ID",
                                  style: CustomTextStyles
                                      .titleLargePoppinsSemiBold))),
                      _buildEmail(context),
                      SizedBox(height: 17.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 11.h),
                              child: Text("DOB",
                                  style: CustomTextStyles
                                      .headlineSmallPrimaryBold))),
                      SizedBox(height: 2.v),
                      _buildDOBDD(context),
                      SizedBox(height: 16.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 6.h),
                              child: Text("Location",
                                  style: CustomTextStyles
                                      .headlineSmallPrimaryBold))),
                      SizedBox(height: 3.v),
                      _buildLocation(context),
                      SizedBox(height: 17.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: Text("Gender",
                                  style: CustomTextStyles
                                      .headlineSmallPrimaryBold))),
                      SizedBox(height: 2.v),
                      _buildGender(context),
                      SizedBox(height: 5.v)
                    ]))),
            bottomNavigationBar: _buildCreateProfile(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 29.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrow2Onerrorcontainer,
            margin: EdgeInsets.only(left: 27.h, top: 27.v, bottom: 25.v)),
        title: AppbarSubtitleThree(
            text: "Account info", margin: EdgeInsets.only(left: 24.h)));
  }

  /// Section Widget
  Widget _buildUserName(BuildContext context) {
    return CustomTextFormField(
        controller: userNameController, hintText: "Someone");
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
        controller: emailController,
        hintText: "Someone@somemail.com",
        textInputType: TextInputType.emailAddress);
  }

  /// Section Widget
  Widget _buildDobDd(BuildContext context) {
    return CustomTextFormField(
        width: 88.h,
        controller: dobDdController,
        hintText: "DD",
        hintStyle: CustomTextStyles.titleLargeGray70003);
  }

  /// Section Widget
  Widget _buildDobYyyy(BuildContext context) {
    return CustomTextFormField(
        width: 178.h,
        controller: dobYyyyController,
        hintText: "YYYY",
        hintStyle: CustomTextStyles.titleLargeGray70003);
  }

  /// Section Widget
  Widget _buildDOBDD(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      _buildDobDd(context),
      Container(
          width: 91.h,
          padding: EdgeInsets.all(16.h),
          decoration: AppDecoration.fillGray
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
          child: Text("MM", style: CustomTextStyles.titleLargeGray70003)),
      _buildDobYyyy(context)
    ]);
  }

  /// Section Widget
  Widget _buildLocation(BuildContext context) {
    return CustomTextFormField(
        controller: locationController, hintText: "Somewhere");
  }

  /// Section Widget
  Widget _buildGender(BuildContext context) {
    return CustomTextFormField(
        controller: genderController,
        hintText: "Male",
        textInputAction: TextInputAction.done);
  }

  /// Section Widget
  Widget _buildCreateProfile(BuildContext context) {
    return CustomElevatedButton(
        text: "Create Profile",
        margin: EdgeInsets.only(left: 27.h, right: 21.h, bottom: 45.v),
        buttonTextStyle: CustomTextStyles.titleLargePoppinsIndigoA200Medium,
        onPressed: () {
          onTapCreateProfile(context);
        });
  }

  /// Navigates to the homePageScreen when the action is triggered.
  onTapCreateProfile(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homePageScreen);
  }
}
