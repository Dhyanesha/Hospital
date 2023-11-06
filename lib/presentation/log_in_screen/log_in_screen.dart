import 'package:dhyanesh_s_application1/core/app_export.dart';
import 'package:dhyanesh_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:dhyanesh_s_application1/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:dhyanesh_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:dhyanesh_s_application1/widgets/custom_elevated_button.dart';
import 'package:dhyanesh_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LogInScreen extends StatelessWidget {
  LogInScreen({Key? key}) : super(key: key);

  TextEditingController userIDController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

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
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [Spacer(), _buildLoginSection(context)])))));
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
  Widget _buildLoginSection(BuildContext context) {
    return Container(
        width: 418.h,
        margin: EdgeInsets.symmetric(horizontal: 6.h),
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 45.v),
        decoration: AppDecoration.fillPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 15.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 27.h),
                      child: Text("Log in",
                          style: theme.textTheme.headlineMedium))),
              SizedBox(height: 17.v),
              Padding(
                  padding: EdgeInsets.only(left: 27.h),
                  child: CustomTextFormField(
                      controller: userIDController,
                      hintText: "User ID",
                      borderDecoration: TextFormFieldStyleHelper.underLineBlack,
                      filled: false)),
              SizedBox(height: 26.v),
              Padding(
                  padding: EdgeInsets.only(left: 27.h),
                  child: CustomTextFormField(
                      controller: passwordController,
                      hintText: "Password",
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.visiblePassword,
                      suffix: Container(
                          margin: EdgeInsets.fromLTRB(30.h, 1.v, 4.h, 2.v),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgMaskGroup,
                              height: 24.adaptSize,
                              width: 24.adaptSize)),
                      suffixConstraints: BoxConstraints(maxHeight: 27.v),
                      obscureText: true,
                      borderDecoration: TextFormFieldStyleHelper.underLineBlack,
                      filled: false)),
              SizedBox(height: 29.v),
              Padding(
                  padding: EdgeInsets.only(right: 3.h),
                  child: Text("Forgot Password?",
                      style: CustomTextStyles.titleMediumGray60001)),
              SizedBox(height: 37.v),
              Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                      onTap: () {
                        onTapTxtConfirmation(context);
                      },
                      child: Text("Don’ have an account? Sign up",
                          style: CustomTextStyles.titleMediumBlack900))),
              SizedBox(height: 14.v),
              CustomElevatedButton(
                  text: "Submit",
                  margin: EdgeInsets.only(left: 10.h, right: 4.h),
                  buttonStyle: CustomButtonStyles.fillCyan)
            ]));
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapTxtConfirmation(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}
