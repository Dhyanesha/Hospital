import 'package:dhyanesh_s_application1/core/app_export.dart';
import 'package:dhyanesh_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 88.v),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(flex: 27),
                      Container(
                          height: 184.adaptSize,
                          width: 184.adaptSize,
                          padding: EdgeInsets.symmetric(
                              horizontal: 49.h, vertical: 53.v),
                          decoration: AppDecoration.fillPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder92),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgCheckmark,
                              height: 74.v,
                              width: 85.h,
                              alignment: Alignment.center)),
                      SizedBox(height: 46.v),
                      Text("Payment Successful!",
                          style: CustomTextStyles.headlineSmallPrimarySemiBold),
                      SizedBox(height: 8.v),
                      Container(
                          width: 288.h,
                          margin: EdgeInsets.symmetric(horizontal: 47.h),
                          child: Text(
                              "Wishing you good health and a great day ahead!",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.titleLargeMedium)),
                      Spacer(flex: 72),
                      CustomElevatedButton(
                          text: "View Appointments",
                          buttonStyle: CustomButtonStyles.fillPrimaryTL7,
                          buttonTextStyle:
                              CustomTextStyles.titleLargePoppinsCyan400Medium,
                          onPressed: () {
                            onTapViewAppointments(context);
                          })
                    ]))));
  }

  /// Navigates to the myAppointmentsTabContainerScreen when the action is triggered.
  onTapViewAppointments(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.myAppointmentsTabContainerScreen);
  }
}
