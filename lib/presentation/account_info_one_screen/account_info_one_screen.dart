import 'package:dhyanesh_s_application1/core/app_export.dart';
import 'package:dhyanesh_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class AccountInfoOneScreen extends StatelessWidget {
  const AccountInfoOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 86.v),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(flex: 53),
                      CustomImageView(
                          imagePath: ImageConstant.img74927961,
                          height: 152.v,
                          width: 273.h),
                      SizedBox(height: 10.v),
                      Text("Cypher Hub",
                          style: CustomTextStyles
                              .headlineLargeMSReferenceSpecialtyPurpleA100),
                      Spacer(flex: 46),
                      CustomElevatedButton(
                          height: 35.v,
                          width: 85.h,
                          text: "start",
                          buttonStyle: CustomButtonStyles.fillIndigoA,
                          buttonTextStyle:
                              CustomTextStyles.titleMediumMontserrat,
                          onPressed: () {
                            onTapStart(context);
                          })
                    ]))));
  }

  /// Navigates to the homePageScreen when the action is triggered.
  onTapStart(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homePageScreen);
  }
}
