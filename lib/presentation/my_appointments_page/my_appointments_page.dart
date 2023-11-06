import '../my_appointments_page/widgets/fiftyone_item_widget.dart';
import 'package:dhyanesh_s_application1/core/app_export.dart';
import 'package:dhyanesh_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MyAppointmentsPage extends StatefulWidget {
  const MyAppointmentsPage({Key? key})
      : super(
          key: key,
        );

  @override
  MyAppointmentsPageState createState() => MyAppointmentsPageState();
}

class MyAppointmentsPageState extends State<MyAppointmentsPage>
    with AutomaticKeepAliveClientMixin<MyAppointmentsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.outlineGray70001,
          child: Column(
            children: [
              SizedBox(height: 28.v),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 6.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 18.h,
                  vertical: 19.v,
                ),
                decoration: AppDecoration.fillPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder20,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildDoctorProfile(context),
                    SizedBox(height: 25.v),
                    _buildAppointmentDetails(context),
                    SizedBox(height: 25.v),
                    _buildAppointmentConfirmation(context),
                    SizedBox(height: 88.v),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDoctorProfile(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.fillCyan.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: _buildDrAndrew(
              context,
              userName: "Dr. Andrew",
              userWebUrl: "M.B.B.S",
            ),
          ),
          SizedBox(height: 9.v),
          Divider(
            color: appTheme.indigoA200,
            endIndent: 26.h,
          ),
          SizedBox(height: 7.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgClock,
                height: 15.adaptSize,
                width: 15.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.h),
                child: Text(
                  "10.30 am",
                  style: theme.textTheme.labelLarge,
                ),
              ),
              Container(
                height: 10.adaptSize,
                width: 10.adaptSize,
                margin: EdgeInsets.only(
                  left: 25.h,
                  bottom: 3.v,
                ),
                decoration: BoxDecoration(
                  color: appTheme.lightGreenA100,
                  borderRadius: BorderRadius.circular(
                    5.h,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 6.h),
                child: Text(
                  "Confirmed",
                  style: theme.textTheme.labelLarge,
                ),
              ),
            ],
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGroup75964,
                  height: 22.v,
                  width: 117.h,
                  margin: EdgeInsets.symmetric(vertical: 1.v),
                ),
                Wrap(
                  runSpacing: 8.v,
                  spacing: 8.h,
                  children:
                      List<Widget>.generate(2, (index) => FiftyoneItemWidget()),
                ),
              ],
            ),
          ),
          SizedBox(height: 1.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCancel(BuildContext context) {
    return CustomElevatedButton(
      height: 24.v,
      width: 83.h,
      text: "Cancel",
      buttonStyle: CustomButtonStyles.fillPrimaryTL12,
      buttonTextStyle: CustomTextStyles.labelMediumGray700,
    );
  }

  /// Section Widget
  Widget _buildReschedule(BuildContext context) {
    return CustomElevatedButton(
      height: 24.v,
      width: 83.h,
      text: "Reschedule",
      margin: EdgeInsets.only(left: 8.h),
      buttonStyle: CustomButtonStyles.fillIndigoA,
      buttonTextStyle: CustomTextStyles.labelMediumPrimary,
    );
  }

  /// Section Widget
  Widget _buildAppointmentDetails(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.fillCyan.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: _buildDrAndrew(
              context,
              userName: "Dr. Andrew",
              userWebUrl: "M.B.B.S",
            ),
          ),
          SizedBox(height: 9.v),
          Divider(
            color: appTheme.indigoA200,
            endIndent: 26.h,
          ),
          SizedBox(height: 6.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgClock,
                height: 15.adaptSize,
                width: 15.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.h),
                child: Text(
                  "10.30 am",
                  style: theme.textTheme.labelLarge,
                ),
              ),
              Container(
                height: 10.adaptSize,
                width: 10.adaptSize,
                margin: EdgeInsets.only(
                  left: 25.h,
                  top: 2.v,
                  bottom: 2.v,
                ),
                decoration: BoxDecoration(
                  color: appTheme.lightGreenA100,
                  borderRadius: BorderRadius.circular(
                    5.h,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 6.h),
                child: Text(
                  "Confirmed",
                  style: theme.textTheme.labelLarge,
                ),
              ),
            ],
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGroup75964,
                  height: 22.v,
                  width: 117.h,
                ),
                Spacer(),
                _buildCancel(context),
                _buildReschedule(context),
              ],
            ),
          ),
          SizedBox(height: 1.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCancel1(BuildContext context) {
    return CustomElevatedButton(
      height: 24.v,
      width: 83.h,
      text: "Cancel",
      buttonStyle: CustomButtonStyles.fillPrimaryTL12,
      buttonTextStyle: CustomTextStyles.labelMediumGray700,
    );
  }

  /// Section Widget
  Widget _buildReschedule1(BuildContext context) {
    return CustomElevatedButton(
      height: 24.v,
      width: 83.h,
      text: "Reschedule",
      margin: EdgeInsets.only(left: 8.h),
      buttonStyle: CustomButtonStyles.fillIndigoA,
      buttonTextStyle: CustomTextStyles.labelMediumPrimary,
    );
  }

  /// Section Widget
  Widget _buildAppointmentConfirmation(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.fillCyan.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: _buildDrAndrew(
              context,
              userName: "Dr. Andrew",
              userWebUrl: "M.B.B.S",
            ),
          ),
          SizedBox(height: 9.v),
          Divider(
            color: appTheme.indigoA200,
            endIndent: 26.h,
          ),
          SizedBox(height: 6.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgClock,
                height: 15.adaptSize,
                width: 15.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.h),
                child: Text(
                  "10.30 am",
                  style: theme.textTheme.labelLarge,
                ),
              ),
              Container(
                height: 10.adaptSize,
                width: 10.adaptSize,
                margin: EdgeInsets.only(
                  left: 25.h,
                  top: 2.v,
                  bottom: 2.v,
                ),
                decoration: BoxDecoration(
                  color: appTheme.lightGreenA100,
                  borderRadius: BorderRadius.circular(
                    5.h,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 6.h),
                child: Text(
                  "Confirmed",
                  style: theme.textTheme.labelLarge,
                ),
              ),
            ],
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGroup75964,
                  height: 22.v,
                  width: 117.h,
                ),
                Spacer(),
                _buildCancel1(context),
                _buildReschedule1(context),
              ],
            ),
          ),
          SizedBox(height: 1.v),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildDrAndrew(
    BuildContext context, {
    required String userName,
    required String userWebUrl,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userName,
                style: CustomTextStyles.titleLargeMedium.copyWith(
                  color: theme.colorScheme.primary,
                ),
              ),
              SizedBox(height: 1.v),
              Text(
                userWebUrl,
                style: theme.textTheme.labelLarge!.copyWith(
                  color: theme.colorScheme.primary,
                ),
              ),
              SizedBox(height: 1.v),
              CustomImageView(
                imagePath: ImageConstant.imgStar,
                height: 11.v,
                width: 60.h,
              ),
            ],
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgRectangle765,
          height: 55.adaptSize,
          width: 55.adaptSize,
        ),
      ],
    );
  }
}
