import 'package:dhyanesh_s_application1/core/app_export.dart';
import 'package:dhyanesh_s_application1/presentation/appointment_one_page/appointment_one_page.dart';
import 'package:dhyanesh_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:dhyanesh_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class AppointmentOneTabContainerScreen extends StatefulWidget {
  const AppointmentOneTabContainerScreen({Key? key}) : super(key: key);

  @override
  AppointmentOneTabContainerScreenState createState() =>
      AppointmentOneTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class AppointmentOneTabContainerScreenState
    extends State<AppointmentOneTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 6.h),
                child: Column(children: [
                  SizedBox(height: 24.v),
                  _buildDrAndrew(context),
                  SizedBox(height: 86.v),
                  Container(
                      decoration: AppDecoration.fillPrimary.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder27),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                height: 35.v,
                                width: 200.h,
                                margin: EdgeInsets.only(left: 21.h),
                                child: TabBar(
                                    controller: tabviewController,
                                    labelPadding: EdgeInsets.zero,
                                    labelColor: theme.colorScheme.primary,
                                    labelStyle: TextStyle(
                                        fontSize: 10.fSize,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600),
                                    unselectedLabelColor: appTheme.blueGray900,
                                    unselectedLabelStyle: TextStyle(
                                        fontSize: 10.fSize,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600),
                                    indicator: BoxDecoration(
                                        color: appTheme.cyan400,
                                        borderRadius:
                                            BorderRadius.circular(10.h)),
                                    tabs: [
                                      Tab(child: Text("Online Consult")),
                                      Tab(child: Text("Visit Hospital"))
                                    ])),
                            SizedBox(
                                height: 545.v,
                                child: TabBarView(
                                    controller: tabviewController,
                                    children: [
                                      AppointmentOnePage(),
                                      AppointmentOnePage()
                                    ]))
                          ]))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: Padding(
            padding: EdgeInsets.only(left: 14.h),
            child: Row(children: [
              Container(
                  height: 39.v,
                  width: 42.h,
                  margin: EdgeInsets.only(bottom: 3.v),
                  child: Stack(alignment: Alignment.bottomLeft, children: [
                    Align(
                        alignment: Alignment.center,
                        child: GestureDetector(
                            onTap: () {
                              onTapView(context);
                            },
                            child: Container(
                                height: 39.v,
                                width: 42.h,
                                decoration: BoxDecoration(
                                    color: theme.colorScheme.primary,
                                    borderRadius:
                                        BorderRadius.circular(21.h))))),
                    CustomImageView(
                        imagePath: ImageConstant.imgArrow2Onerrorcontainer,
                        height: 3.v,
                        width: 2.h,
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.fromLTRB(13.h, 20.v, 27.h, 16.v))
                  ])),
              AppbarTitle(
                  text: "Appointment",
                  margin: EdgeInsets.only(left: 79.h, top: 6.v))
            ])));
  }

  /// Section Widget
  Widget _buildDrAndrew(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 18.h, right: 25.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle762,
              height: 131.adaptSize,
              width: 131.adaptSize,
              radius: BorderRadius.circular(10.h)),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 7.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Dr. Andrew",
                        style: CustomTextStyles.headlineSmallPrimary),
                    SizedBox(height: 4.v),
                    Text("M.B.B.S", style: CustomTextStyles.labelLargeSemiBold),
                    SizedBox(height: 4.v),
                    SizedBox(
                        width: 204.h,
                        child: Text(
                            "Dr. Andrew is an experienced dentist with over 10 years of practice. He specializes in general dentistry and offers a range of services.",
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.labelLarge))
                  ]))
        ]));
  }

  /// Navigates to the listOfDoctorsScreen when the action is triggered.
  onTapView(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.listOfDoctorsScreen);
  }
}
