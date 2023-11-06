import '../appointment_one_page/widgets/appointmentone_item_widget.dart';
import '../appointment_one_page/widgets/fiftythree_item_widget.dart';
import 'package:dhyanesh_s_application1/core/app_export.dart';
import 'package:dhyanesh_s_application1/widgets/custom_elevated_button.dart';
import 'package:dhyanesh_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class AppointmentOnePage extends StatefulWidget {
  const AppointmentOnePage({Key? key}) : super(key: key);

  @override
  AppointmentOnePageState createState() => AppointmentOnePageState();
}

class AppointmentOnePageState extends State<AppointmentOnePage>
    with AutomaticKeepAliveClientMixin<AppointmentOnePage> {
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
                child: Column(children: [
                  SizedBox(height: 41.v),
                  _buildPreferredDayRow(context)
                ]))));
  }

  /// Section Widget
  Widget _buildPreferredDayRow(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
            padding: EdgeInsets.only(left: 17.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                  padding: EdgeInsets.only(right: 21.h),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Preferred Day",
                            style: theme.textTheme.headlineSmall),
                        CustomImageView(
                            imagePath: ImageConstant.imgMaskGroup24x24,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(left: 208.h, bottom: 5.v),
                            onTap: () {
                              onTapImgImage(context);
                            })
                      ])),
              SizedBox(height: 13.v),
              SizedBox(
                  height: 48.v,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return SizedBox(width: 12.h);
                      },
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return AppointmentoneItemWidget();
                      })),
              SizedBox(height: 15.v),
              Text("Available time slots",
                  style: theme.textTheme.headlineSmall),
              SizedBox(height: 15.v),
              Wrap(
                  runSpacing: 47.v,
                  spacing: 47.h,
                  children: List<Widget>.generate(
                      5, (index) => FiftythreeItemWidget())),
              SizedBox(height: 136.v),
              Padding(
                  padding: EdgeInsets.only(right: 24.h),
                  child: Row(children: [
                    CustomIconButton(
                        height: 48.adaptSize,
                        width: 48.adaptSize,
                        padding: EdgeInsets.all(12.h),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgMdiCardsHeartOutline)),
                    Expanded(
                        child: CustomElevatedButton(
                            text: "Book an Appointment",
                            margin: EdgeInsets.only(left: 21.h),
                            buttonStyle: CustomButtonStyles.fillCyanTL7))
                  ]))
            ])));
  }

  /// Navigates to the appointmentScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.appointmentScreen);
  }
}
