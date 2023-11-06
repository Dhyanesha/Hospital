import 'package:dhyanesh_s_application1/core/app_export.dart';
import 'package:dhyanesh_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppointmentoneItemWidget extends StatelessWidget {
  const AppointmentoneItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 138.h,
      child: CustomElevatedButton(
        width: 138.h,
        text: "Today",
        buttonStyle: CustomButtonStyles.fillCyanTL10,
        buttonTextStyle: CustomTextStyles.titleSmallPrimary_1,
      ),
    );
  }
}
