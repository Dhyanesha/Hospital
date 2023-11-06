import 'package:dhyanesh_s_application1/core/app_export.dart';
import 'package:dhyanesh_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class LogInAsScreen extends StatelessWidget {
  const LogInAsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Spacer(flex: 57),
                  CustomImageView(
                      imagePath: ImageConstant.imgGroup76036,
                      height: 247.v,
                      width: 346.h),
                  Spacer(flex: 42),
                  _buildLogInAsColumn(context)
                ]))));
  }

  /// Section Widget
  Widget _buildLogInAsColumn(BuildContext context) {
    return Container(
        width: 418.h,
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 45.v),
        decoration: AppDecoration.fillPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 5.v),
              Text("Navigating Health with Ease",
                  style: CustomTextStyles.headlineSmallCyan400),
              SizedBox(height: 9.v),
              Opacity(
                  opacity: 0.5,
                  child: Container(
                      width: 360.h,
                      margin: EdgeInsets.only(left: 13.h, right: 14.h),
                      child: Text(
                          "Our mission is to empower you with the tools and resources you need to take control of your health journey, making it simpler and more accessible than ever before.",
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleMediumPoppinsGray80087
                              .copyWith(height: 1.56)))),
              SizedBox(height: 18.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 6.h),
                      child: Text("Log in as",
                          style: theme.textTheme.headlineMedium))),
              SizedBox(height: 14.v),
              CustomElevatedButton(
                  text: "Healthcare Professional",
                  margin: EdgeInsets.only(left: 6.h),
                  buttonStyle: CustomButtonStyles.fillErrorContainer,
                  onPressed: () {
                    onTapHealthcareProfessional(context);
                  }),
              SizedBox(height: 12.v),
              CustomElevatedButton(
                  text: "Patient",
                  margin: EdgeInsets.only(left: 6.h),
                  buttonStyle: CustomButtonStyles.fillCyan,
                  onPressed: () {
                    onTapPatient(context);
                  })
            ]));
  }

  /// Navigates to the logInScreen when the action is triggered.
  onTapHealthcareProfessional(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.logInScreen);
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapPatient(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}
